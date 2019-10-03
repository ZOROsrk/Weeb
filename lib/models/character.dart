import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters = [
  Character(
      name: "Vegetables",
      imagePath: "assets/images/veg2.png",
      description:
          "Tomatos Left : 250g \n\ncucumber left : 200g \n\nCarrot Left : 150g \n\nOnions Left: 200g",
      colors: [Colors.orange.shade200, Colors.orange.shade400]),
      Character(
      name: "Luffy",
      imagePath: "assets/images/Luffy.png",
      description:
          "Luffy made his debut in One Piece chapter #1 as a young boy who acquires the properties of rubber after inadvertently eating the supernatural Gum-Gum Fruit. Last known bounty : 500,000,000 Belly",
      colors: [Colors.green.shade200, Colors.green.shade400])
];
