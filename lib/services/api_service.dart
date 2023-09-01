import 'dart:developer';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_playground/interfaces/post.dart';

class Post {
  Map finalData = {};

  Post();

  Future<void> getPosts() async {
    try {
      Response response =
          await get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
      Map data = jsonDecode(response.body);
      finalData = data;
    } catch (e) {}
  }
}
