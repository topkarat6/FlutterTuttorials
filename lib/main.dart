import 'package:flutter/material.dart';
import 'package:fluttertutorials/View/Dio/Dio.dart';
import 'package:fluttertutorials/View/Keys/GlobalKeys.dart';
import 'package:fluttertutorials/View/Keys/UniqueKey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Tutorials",
      home: DioExample(),
    );
  }
}
