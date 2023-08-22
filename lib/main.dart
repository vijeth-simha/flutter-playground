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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.amber,
            child: const Text("hhii"),
          ),
          const Text('Row 1'),
          const Text('Row 2'),
          const Text('Row 3'),
          const Text('Row 4'),
          const Text('Row 5'),
        ],
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
