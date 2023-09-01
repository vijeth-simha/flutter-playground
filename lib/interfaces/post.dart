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

  factory PostSchema.fromJson(Map<String, dynamic> json) {
    return PostSchema(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      title: json['title'] ?? '',
      body: json['body'] ?? '',
    );
  }
}
