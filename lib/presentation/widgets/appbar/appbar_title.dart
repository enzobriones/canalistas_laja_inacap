import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Text(
        'Medición de caudales',
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 24.0,
        ),
      ),
      Text(
        'Bocatoma Tucapel',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      )
    ]);
  }
}