import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soundcloud/pages/profil/index.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({
    Key key,
    @required ProfilBloc profilBloc,
  })  : _profilBloc = profilBloc,
        super(key: key);

  final ProfilBloc _profilBloc;

  @override
  ProfilScreenState createState() {
    return new ProfilScreenState(_profilBloc);
  }
}

class ProfilScreenState extends State<ProfilScreen> {
  final ProfilBloc _profilBloc;
  ProfilScreenState(this._profilBloc);

  @override
  void initState() {
    super.initState();
    this._profilBloc.dispatch(LoadProfilEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilBloc, ProfilState>(
        bloc: widget._profilBloc,
        builder: (
          BuildContext context,
          ProfilState currentState,
        ) {
          if (currentState is UnProfilState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorProfilState) {
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
