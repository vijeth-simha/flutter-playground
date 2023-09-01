import 'package:flutter/material.dart';
import 'package:flutter_playground/services/api_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  final posts = Post();
  getPost() async {
    await posts.getPosts();
    // print(finalData);
    if (mounted) {
      Navigator.pushNamed(context, '/home',
          arguments: {'finalData': posts.finalData});
    }
  }

  @override
  void initState() {
    super.initState();
    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: SpinKitSquareCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
