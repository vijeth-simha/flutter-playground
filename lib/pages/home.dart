import 'package:flutter/material.dart';
import 'package:flutter_playground/interfaces/post.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/eg1.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location',
                      arguments: {'finalData': data['finalData']});
                },
                icon: const Icon(
                  Icons.edit_location,
                ),
                label: const Text(
                  'edit location',
                  style: TextStyle(fontSize: 15.0),
                ))
          ],
        ),
      ),
    );
  }
}
