import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Post {
  late List finalData;

  Post();

  Future<void> getPosts() async {
    try {
      Response response =
          await get(Uri.https('jsonplaceholder.typicode.com', '/posts'));
      List data = jsonDecode(response.body);

      finalData = data;
    } catch (e) {}
  }
}
