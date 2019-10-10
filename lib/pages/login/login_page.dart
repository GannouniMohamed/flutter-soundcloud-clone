import 'package:flutter/material.dart';
import 'package:soundcloud/pages/login/index.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    var _loginBloc = new LoginBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new LoginScreen(loginBloc: _loginBloc),
    );
  }
}
