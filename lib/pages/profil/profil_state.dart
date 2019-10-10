import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ProfilState extends Equatable {
  final Iterable propss;
  ProfilState([this.propss]);

  /// Copy object for use in action
  ProfilState getStateCopy();

  @override
  List<Object> get props => [propss];
}

/// UnInitialized
class UnProfilState extends ProfilState {
  @override
  String toString() => 'UnProfilState';

  @override
  ProfilState getStateCopy() {
    return UnProfilState();
  }
}

/// Initialized
class InProfilState extends ProfilState {
  @override
  String toString() => 'InProfilState';

  @override
  ProfilState getStateCopy() {
    return InProfilState();
  }
}

class ErrorProfilState extends ProfilState {
  final String errorMessage;

  ErrorProfilState(this.errorMessage);
  
  @override
  String toString() => 'ErrorProfilState';

  @override
  ProfilState getStateCopy() {
    return ErrorProfilState(this.errorMessage);
  }
}
