import 'package:flutter/material.dart';
import '../widgets/MyCard.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MyCard('images/lake.jpg', 'Lake'),
        MyCard('images/lake.jpg', 'Lake'),
        MyCard('images/lake.jpg', 'Lake'),
      ],
    );
  }
}
