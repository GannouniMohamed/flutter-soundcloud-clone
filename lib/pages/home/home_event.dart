import 'dart:async';
import 'package:soundcloud/pages/home/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync(
      {HomeState currentState, HomeBloc bloc});
  final HomeRepository _homeRepository = new HomeRepository();
}

class LoadHomeEvent extends HomeEvent {
  @override
  String toString() => 'LoadHomeEvent';

  @override
  Future<HomeState> applyAsync(
      {HomeState currentState, HomeBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 2));
      this._homeRepository.test();
      return new InHomeState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorHomeState(_?.toString());
    }
  }
}
