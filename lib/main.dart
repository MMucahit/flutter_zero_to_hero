import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/101/text_learn.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App!',
      theme: ThemeData.light(),
      home: TextLearnView(),
    );
  }
}
