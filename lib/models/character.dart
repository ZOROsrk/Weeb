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
      name: "Naruto Uzumaki",
      imagePath: "assets/images/naruto.png",
      description:
          "Naruto is, of course, the main character of the anime “Naruto”. He is a  ninja who’s goal is to become the “Kage” or Chief of his hometown, The village hidden in the leaves. Naruto is very different compared to other  kid ninjas in his hometown. He doesn’t have any special bloodline powers like some other kids do, but when he was born he was cursed with the power of the nine-tailed demon fox sealed inside of his body.",
      colors: [Colors.orange.shade200, Colors.orange.shade400]),
      Character(
      name: "Luffy",
      imagePath: "assets/images/Luffy.png",
      description:
          "Luffy made his debut in One Piece chapter #1 as a young boy who acquires the properties of rubber after inadvertently eating the supernatural Gum-Gum Fruit. Last known bounty : 500,000,000 Belly",
      colors: [Colors.green.shade200, Colors.green.shade400])
];
