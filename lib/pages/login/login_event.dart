import 'dart:async';
import 'package:soundcloud/pages/login/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LoginEvent {
  Future<LoginState> applyAsync(
      {LoginState currentState, LoginBloc bloc});
  final LoginRepository _loginRepository = new LoginRepository();
}

class LoadLoginEvent extends LoginEvent {
  @override
  String toString() => 'LoadLoginEvent';

  @override
  Future<LoginState> applyAsync(
      {LoginState currentState, LoginBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 2));
      this._loginRepository.test();
      return new InLoginState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorLoginState(_?.toString());
    }
  }
}
