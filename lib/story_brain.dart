import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Xe của bạn bị nổ lốp trên một con đường vắng giữa rừng sâu. Điện thoại không có sóng. Bạn quyết định đi nhờ xe. Một chiếc xe bán tải cũ kỹ gỉ sét dừng lại bên cạnh bạn. Một người đàn ông đội mũ rộng vành với đôi mắt vô hồn mở cửa xe cho bạn.',
      choice1: 'Cảm ơn vì đã giúp đỡ. Tôi sẽ lên xe!',
      choice2: 'Tốt hơn là hỏi xem trước tiên ông ấy có phải là kẻ giết người không.',
      nextStory1: 2,
      nextStory2: 1,
    ),
    Story(
      storyTitle:
          'Ông ấy gật đầu chậm rãi, không bối rối trước câu hỏi. "Phần lớn mọi người đều không hỏi câu đó", ông ấy nói một cách bí hiểm.',
      choice1: 'Ít nhất ông ấy thành thật. Tôi sẽ lên xe.',
      choice2: 'Đợi đã, tôi biết cách tự thay lốp xe mà.',
      nextStory1: 2,
      nextStory2: 3,
    ),
    Story(
      storyTitle:
          'Khi bạn đi được một đoạn, người đàn ông bắt đầu nói về mối quan hệ của ông ấy với mẹ. Ông ấy càng lúc càng trở nên giận dữ. Ông ấy yêu cầu bạn mở ngăn đựng đồ phía trước. Bên trong, bạn thấy một con dao dính máu, hai ngón tay bị cắt đứt và một cuốn băng cassette của Elton John.',
      choice1: 'Tôi thích Elton John! Hãy bật cuốn băng cassette lên nào.',
      choice2: 'Là hắn hoặc là mình! Bạn chộp lấy con dao và lao vào hắn.',
      nextStory1: 5,
      nextStory2: 4,
    ),
    Story(
      storyTitle:
          'Bạn quyết định tự thay lốp xe nhưng sơ ý làm rơi ốc vít xuống vực. Bạn bị mắc kẹt vĩnh viễn giữa rừng và nghe thấy tiếng bầy sói hoang hú vang khi trời sập tối.',
      choice1: 'Bắt đầu lại',
      choice2: '',
      nextStory1: 0,
      nextStory2: 0,
    ),
    Story(
      storyTitle:
          'Khi bạn lao vào người lái xe, chiếc xe mất lái và lao thẳng xuống vực sâu. Bạn may mắn văng ra ngoài an toàn nhưng trôi dạt vào một vùng đất hoang vu không dấu chân người.',
      choice1: 'Bắt đầu lại',
      choice2: '',
      nextStory1: 0,
      nextStory2: 0,
    ),
    Story(
      storyTitle:
          'Bạn gắn kết sâu sắc cùng người tài xế qua giai điệu bài hát "Can You Feel the Love Tonight". Ông ấy đưa bạn đến điểm đến an toàn và tặng bạn một món quà kỷ niệm tuyệt vời.',
      choice1: 'Bắt đầu lại',
      choice2: '',
      nextStory1: 0,
      nextStory2: 0,
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      _storyNumber = _storyData[_storyNumber].nextStory1;
    } else if (choiceNumber == 2) {
      _storyNumber = _storyData[_storyNumber].nextStory2;
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    // Nếu choice2 rỗng hoặc ở các đoạn kết (index 3, 4, 5) -> ẩn nút choice2
    return _storyData[_storyNumber].choice2.isNotEmpty;
  }

  int getStoryNumber() {
    return _storyNumber;
  }
}
