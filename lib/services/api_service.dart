import 'dart:developer';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_playground/interfaces/post.dart';

class Post {
  List<PostSchema> finalData = [];

  Future<void> getPosts() async {
    try {
      Response response =
          await get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        finalData =
            responseData.map((json) => PostSchema.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      throw Exception('Failed to load posts');
    }
  }
}
