import 'package:eco_notes/models/character.dart';
import 'package:eco_notes/models/style.dart';
import 'package:flutter/material.dart';

class CharacterDescription extends StatefulWidget {
  final Character character;

  const CharacterDescription({Key key, this.character}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new _CharacterDescriptionState();
  }
}

class _CharacterDescriptionState extends State<CharacterDescription> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.height;
    return new Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Hero(
          tag: "background-${widget.character.name}",
          child: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: widget.character.colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Hero(
                  tag: "goToImage-${characters[0].name}",
                  child: Image.asset(
                    widget.character.imagePath,
                    height: 0.45 * screenSize,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Hero(
                  tag: "text-${widget.character.name}",
                  child: Material(
                      color: Colors.transparent,
                      child: Container(
                          child: Text(widget.character.name,
                              style: AppTheam.heading))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 8, 32),
                child: Text(widget.character.description,
                    style: AppTheam.subHeading),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
