import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as List<dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Text('Choose Location Screen'),
    );
  }
}
