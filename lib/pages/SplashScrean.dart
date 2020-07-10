import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:soundcloud/widgets/menu.dart';
import 'package:soundcloud/pages/HomePage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text(
          'soundCloud clone',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.asset("assets/icon.png"),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("hello"),
        loaderColor: Colors.white);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.playlist_add_check)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        bottomNavigationBar: menu(),
        body: TabBarView(
          children: [
            HomePage(
              title: 'Accueil',
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.playlist_add_check),
          ],
        ),
      ),
    );
  }
}
