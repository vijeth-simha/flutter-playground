import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Post {
  late Map finalData;

  Post();

  Future<void> getPosts() async {
    try {
      Response response =
          await get(Uri.https('jsonplaceholder.typicode.com', '/posts/78'));
      Map data = jsonDecode(response.body);

      finalData = data;
    } catch (e) {}
  }
}
