import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(
                Icons.edit_location,
                color: Colors.white,
              ),
              label: const Text(
                'edit location',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ))
        ],
      ),
    );
  }
}
