import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(child: Text('$counter')),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.amber,
            child: const Text("Hey flutter"),
          ),
          const Text('Row 2'),
          const Text('Row 3'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
      ),
    );
  }
}
