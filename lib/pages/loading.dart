import 'package:flutter/material.dart';
import 'package:flutter_playground/services/api_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getPost() async {
    Post posts = Post();
    await posts.getPosts();
  }

  @override
  void initState() {
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading screen'),
    );
  }
}
