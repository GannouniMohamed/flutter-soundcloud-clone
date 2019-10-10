import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:soundcloud/pages/profil/index.dart';

class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  static final ProfilBloc _profilBlocSingleton = new ProfilBloc._internal();
  factory ProfilBloc() {
    return _profilBlocSingleton;
  }
  ProfilBloc._internal();
  
  ProfilState get initialState => new UnProfilState();

  @override
  Stream<ProfilState> mapEventToState(
    ProfilEvent event,
  ) async* {
    try {
      yield await event.applyAsync(currentState: currentState, bloc: this);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }
}
