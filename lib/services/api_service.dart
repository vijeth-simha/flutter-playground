import 'package:http/http.dart';
import 'dart:convert';

class Post {
  String userId;
  int id;
  String title;
  late Map finalData;

  Post({required this.userId, required this.id, required this.title});

  void getPosts() async {
    Response response =
        await get(Uri.https('jsonplaceholder.typicode.com', '/posts/78'));
    Map data = jsonDecode(response.body);

    finalData = data;
  }
}
