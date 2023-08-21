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
      body: const Center(
        child: Text(
          "Hey Stateless widget",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.amber),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: () {
          debugPrint('Hello Vijeth!!!');
        },
      ),
    );
  }
}
