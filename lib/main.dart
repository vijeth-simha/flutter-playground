import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello "),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Hey Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text("Hi"),
          onPressed: () {
            debugPrint('Hello Vijeth sdsdi!');
          },
        ),
      ),
    ));
