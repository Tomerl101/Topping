import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imagePath;
  final String cityName;

  MyCard(this.imagePath, this.cityName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Container(
                    height: 210.0,
                    width: 160.0,
                    child: Image.asset(imagePath, fit: BoxFit.cover)),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Row(
                    children: <Widget>[
                      Text(cityName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white))
                    ],
                  ),
                )
              ],
            )));
  }
}
