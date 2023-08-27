import 'package:flutter/material.dart';
import 'package:flutter_playground/services/api_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  int userId = 0;
  getPost() async {
    Post posts = Post();
    await posts.getPosts();
    setState(() {
      userId = posts.finalData["userId"];
    });
  }

  @override
  void initState() {
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('$userId'),
      ),
    );
  }
}
