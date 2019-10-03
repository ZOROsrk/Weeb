import 'package:eco_notes/screens/character_listing.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new MaterialApp(
        title: "Vajra TechnoMobiles",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: new AppBarTheme(
            color: Colors.white,
            elevation: 0.0
          )
        ),
        home: new CharacterListingScreen()
    );
  }
}