import 'package:devtools/tasks/second.dart';
import 'package:devtools/tasks/third.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Devtools());
}

class Devtools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageScreen(),
    );
  }
}
