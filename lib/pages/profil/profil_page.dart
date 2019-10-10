import 'package:flutter/material.dart';
import 'package:soundcloud/pages/profil/index.dart';

class ProfilPage extends StatelessWidget {
  static const String routeName = "/profil";

  @override
  Widget build(BuildContext context) {
    var _profilBloc = new ProfilBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profil"),
      ),
      body: new ProfilScreen(profilBloc: _profilBloc),
    );
  }
}
