import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/choose_location.dart';
import 'package:flutter_playground/pages/forms.dart';
import 'package:flutter_playground/pages/loading.dart';
import 'pages/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
        '/forms': (context) => const Forms(),
      },
    ));
