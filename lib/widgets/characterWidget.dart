import 'package:eco_notes/models/character.dart';
import 'package:eco_notes/models/style.dart';
import 'package:eco_notes/screens/characterDetailsScreen.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 350),
                pageBuilder: (context, _, __) =>
                    CharacterDescription(character: characters[0])));
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: CharacterCardBackgroundClipper(),
                child: Hero(
                  tag: "background-${characters[0].name}",
                  child: new Container(
                    height: 0.60 * screenHeight,
                    width: 0.9 * screenWidth,
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: characters[0].colors,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft)),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.3, -0.5),
            child: Hero(
              tag: "goToImage-${characters[0].name}",
              child: Image.asset(
                characters[0].imagePath,
                height: 0.55 * screenHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, bottom: 20, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: "text-${characters[0].name}",
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: new Text(
                        characters[0].name,
                        style: AppTheam.heading,
                      ),
                    ),
                  ),
                ),
                new Text(
                  "Tap for info",
                  style: AppTheam.subHeading,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
