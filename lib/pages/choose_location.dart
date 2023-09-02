import 'package:flutter/material.dart';
import 'package:flutter_playground/interfaces/post.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  Map<String, dynamic> data = {};
  List<PostSchema> posts = [];
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    posts = data['finalData'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Location'),
          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(posts[index]);
                },
                title: Text(posts[index].title),
              ),
            ),
          );
        }));
  }
}
