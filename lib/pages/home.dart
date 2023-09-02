import 'package:flutter/material.dart';
import 'package:flutter_playground/interfaces/post.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};
  List<PostSchema> posts = [];
  String title = '';

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    posts = data['finalData'];
    title = title == '' ? posts[0].title : title;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/eg1.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(
                        context, '/location',
                        arguments: {'finalData': posts});
                    setState(() {
                      title = result['title'];
                    });
                  },
                  icon: const Icon(
                    Icons.edit_location,
                  ),
                  label: const Text(
                    'edit location',
                    style: TextStyle(fontSize: 15.0),
                  )),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20.0, color: Colors.deepOrange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
