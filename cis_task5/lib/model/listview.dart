class BoardModel {
  final String text;
  final String img;
  final String time;
  final String post;
  BoardModel(
      {required this.text,
      required this.img,
      required this.time,
      required this.post});
}

List<BoardModel> board = [
  BoardModel(
      text: 'Board 2023',
      img: 'images/4.jpg',
      time: '2022-11-26 03:41:24',
      post:
          'نخوض الدرب مجدداًولتكن معالمه أفراد سائرين نحوك دائماً بدايه جديده بموايا طيبه بنبداها مع قاده جدد قرروا يضيفوا ويسيبوا أثر جميل'),
  BoardModel(
    text: 'technicall squad',
    img: 'images/5.jpg',
    time: '2022-11-26 03:41:24',
    post:
        'نخوض الدرب مجدداًولتكن معالمه أفراد سائرين نحوك دائماً بدايه جديده بموايا طيبه بنبداه',
  ),
];
