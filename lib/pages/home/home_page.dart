import 'package:flutter/material.dart';
import 'package:soundcloud/pages/home/index.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = new HomeBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new HomeScreen(homeBloc: _homeBloc),
    );
  }
}
