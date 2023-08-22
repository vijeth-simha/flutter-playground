import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("sdc"),
        onPressed: () {
          debugPrint('Hello from button click!!!');
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: () {
          debugPrint('Hello Vijeth!!!');
        },
      ),
    );
  }
}