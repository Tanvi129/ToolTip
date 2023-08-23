import 'package:flutter/material.dart';
import 'package:tooltip/screens/Screen_1.dart';
import 'package:tooltip/screens/Screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": ((context) => Screen_1()),
        "/screen2": ((context) => Screen_2()),
      },
    );
  }
}
