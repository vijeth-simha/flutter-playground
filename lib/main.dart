import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/choose_location.dart';
import 'package:flutter_playground/pages/loading.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    ));
