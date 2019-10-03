import 'package:flutter/material.dart';

class AppTheam{
  static const TextStyle display1= TextStyle(
    fontFamily: 'WorkSans',
    color: Colors.black,
    fontSize: 38,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2
  );

  static const TextStyle display2= TextStyle(
    fontFamily: 'WorkSans',
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1
  );

  static final TextStyle heading= TextStyle(
    fontFamily: 'WorkSans',
    fontSize: 34,
    fontWeight: FontWeight.w600,
    color: Colors.white.withOpacity(0.8),
    letterSpacing: 1.2
  );

    static final TextStyle subHeading= TextStyle(
    inherit: true,
    fontFamily: 'WorkSans',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.8),

  );
}