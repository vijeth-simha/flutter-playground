import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello "),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "Hey Flutter",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text("Click"),
          onPressed: () {
            debugPrint('Hello Vijeth sdsdi!');
          },
        ),
      ),
    ));
