# Destini - Ứng Dụng Câu Chuyện Tương Tác (Flutter)

Destini là một ứng dụng Flutter cho phép người dùng trải nghiệm câu chuyện tương tác dạng **"chọn lựa hành động"** (Choose Your Own Adventure).

---

## 🎯 Chức năng chính

1. **Hiển thị nội dung câu chuyện**:
   - Khung văn bản chính hiển thị nội dung câu chuyện (`storyTitle`).
   - Hai lựa chọn tương ứng cho người dùng (`choice1` và `choice2`).

2. **Điều hướng logic câu chuyện**:
   - Sử dụng mô hình hướng đối tượng với các thuộc tính `nextStory1`, `nextStory2` trong đối tượng `Story`.
   - Lớp `StoryBrain` quản lý trạng thái (`_storyNumber`), danh sách dữ liệu (`_storyData`) và điều hướng người chơi qua từng phân đoạn.

3. **Tùy biến hiển thị khi kết thúc**:
   - Khi câu chuyện đi đến các kết thúc (Index 3, 4, 5), widget `Visibility` tự động ẩn nút lựa chọn 2.
   - Nút lựa chọn 1 tự động chuyển thành **"Bắt đầu lại"** (Restart) với icon và màu sắc phù hợp, cho phép người chơi quay lại đầu câu chuyện (`_storyNumber = 0`).

---

## 📂 Cấu trúc mã nguồn

```text
lib/
│
├── main.dart           # Giao diện chính (UI), bố cục Column, Expanded, ElevatedButton và Visibility
├── story.dart          # Lớp mô hình Story (storyTitle, choice1, choice2, nextStory1, nextStory2)
└── story_brain.dart    # Bộ não quản lý logic câu chuyện, danh sách cốt truyện và chuyển đổi nhánh
```

---

## 🌳 Sơ đồ phân nhánh cốt truyện (Story Flow)

```mermaid
graph TD
    S0["Story 0: Xe bị nổ lốp trong rừng"]
    S1["Story 1: Hỏi tài xế có phải kẻ giết người"]
    S2["Story 2: Tài xế kể chuyện mẹ và mở hộc đồ"]
    S3["Story 3 (Kết thúc 1): Tự thay lốp và bị kẹt"]
    S4["Story 4 (Kết thúc 2): Tấn công tài xế & rơi xuống vực"]
    S5["Story 5 (Kết thúc 3): Hát nhạc Elton John & an toàn"]

    S0 -->|Lựa chọn 1| S2
    S0 -->|Lựa chọn 2| S1

    S1 -->|Lựa chọn 1| S2
    S1 -->|Lựa chọn 2| S3

    S2 -->|Lựa chọn 1| S5
    S2 -->|Lựa chọn 2| S4

    S3 -->|Bắt đầu lại| S0
    S4 -->|Bắt đầu lại| S0
    S5 -->|Bắt đầu lại| S0
```

---

## 🚀 Hướng dẫn chạy ứng dụng

1. Đảm bảo máy tính đã cài đặt Flutter SDK.
2. Mở thư mục dự án trong terminal hoặc VS Code / Android Studio.
3. Chạy lệnh cài đặt thư viện:
   ```bash
   flutter pub get
   ```
4. Chạy ứng dụng trên thiết bị giả lập hoặc trình duyệt:
   ```bash
   flutter run
   ```
