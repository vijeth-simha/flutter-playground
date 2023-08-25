import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(author: 'author', text: 'text'),
    Quote(author: 'author', text: 'text')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes List"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) => Text('${e.author}- ${e.text}')).toList(),
      ),
    );
  }
}
