import 'package:eco_notes/models/style.dart';
import 'package:eco_notes/widgets/characterWidget.dart';
import 'package:flutter/material.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() =>
      new _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(right: 16),
            child: new Icon(Icons.search),
          )
        ],
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 3),
              child: RichText(
                text: TextSpan(children: [
                  new TextSpan(text: "Anime \n", style: AppTheam.display1),
                  new TextSpan(text: "Characters", style: AppTheam.display2)
                ]),
              ),
            ),
          ),
          new Expanded(
            child: new CharacterWidget(),
          ),
        ],
      ),
    );
  }
}
