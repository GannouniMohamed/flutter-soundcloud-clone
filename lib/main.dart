import 'package:flutter/material.dart';
import 'package:soundcloud/widgets/menu.dart';
import 'package:soundcloud/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoundCloud',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: DefaultTabController(
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
      ),
    );
  }
}
