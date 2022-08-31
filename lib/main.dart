import 'package:flutter/material.dart';
import 'package:widgets_personalizado/views/one_page.dart';
import 'package:widgets_personalizado/views/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': ((_) => const OnePage()),
        '/twoPage': ((_) => const TwoPage()),
      },
    );
  }
}
