import 'dart:developer';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_playground/interfaces/post.dart';

class Post {
  List<dynamic> finalData = [];

  Future<List<dynamic>> getPosts() async {
    try {
      Response response =
          await get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        // final List<dynamic> posts = responseData;
        // print(responseData);
        return responseData;
        // if (posts != null && posts is List<dynamic>) {
        //   return posts;
        // } else {
        //   throw Exception('Invalid response format');
        // }
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      throw Exception('Failed to load posts');
    }
  }
}
