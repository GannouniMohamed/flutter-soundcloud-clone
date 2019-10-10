import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundcloud/pages/login/index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key key,
    @required LoginBloc loginBloc,
  })  : _loginBloc = loginBloc,
        super(key: key);

  final LoginBloc _loginBloc;

  @override
  LoginScreenState createState() {
    return new LoginScreenState(_loginBloc);
  }
}

class LoginScreenState extends State<LoginScreen> {
  final LoginBloc _loginBloc;
  LoginScreenState(this._loginBloc);

  @override
  void initState() {
    super.initState();
    this._loginBloc.dispatch(LoadLoginEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        bloc: widget._loginBloc,
        builder: (
          BuildContext context,
          LoginState currentState,
        ) {
          if (currentState is UnLoginState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorLoginState) {
            return new Container(
              child: new Center(
              child: new Text(currentState.errorMessage ?? 'Error' ),
            ));
          }
          return new Container(
              child: new Center(
            child: new Text("В разработке"),
          ));
        });
  }
}
