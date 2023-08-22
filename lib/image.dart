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
        child: Image.network(
            'https://assets.thehansindia.com/h-upload/2020/10/11/1004990-ksrtc.webp'),
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
