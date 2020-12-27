import 'package:flutter/material.dart';
import 'package:translate_window/animation/launch_animation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      title: 'Google Translate',
      theme: ThemeData(
        primaryColor: Colors.blue[600],
        primarySwatch: Colors.blue,
      ),
      home: LaunchAnimation(),
    ));
  }
}

void main() => runApp(MyApp());
