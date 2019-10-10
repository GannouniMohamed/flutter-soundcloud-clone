import 'dart:async';
import 'package:soundcloud/pages/profil/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProfilEvent {
  Future<ProfilState> applyAsync(
      {ProfilState currentState, ProfilBloc bloc});
  final ProfilRepository _profilRepository = new ProfilRepository();
}

class LoadProfilEvent extends ProfilEvent {
  @override
  String toString() => 'LoadProfilEvent';

  @override
  Future<ProfilState> applyAsync(
      {ProfilState currentState, ProfilBloc bloc}) async {
    try {
      await Future.delayed(new Duration(seconds: 2));
      this._profilRepository.test();
      return new InProfilState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorProfilState(_?.toString());
    }
  }
}
