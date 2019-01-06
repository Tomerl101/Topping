import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String imagePath;
  final String cityName;

  Card(this.imagePath, this.cityName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210.0,
                    width: 160.0,
                    child: Image.asset(imagePath, 
                          fit: BoxFit.cover))
              ],
            )));
  }
}
