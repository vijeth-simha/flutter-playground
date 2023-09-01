class PostSchema {
  int userId;
  int id;
  String title;
  String body;

  PostSchema(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}
