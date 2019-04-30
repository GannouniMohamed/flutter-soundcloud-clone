import 'package:flutter/material.dart';
import 'package:soundcloud/pages/SplashScrean.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoundCloud',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Splash()
    );
  }
}
