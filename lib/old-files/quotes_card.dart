import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  // const QuoteCard({required this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.author,
              style: const TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
            const SizedBox(
              height: 16.0,
            ),
            FlatButton.icon(
                onPressed: () => {delete()},
                icon: const Icon(Icons.delete),
                label: const Text("delete quote"))
          ],
        ),
      ),
    );
  }
}
