import 'package:flutter/material.dart';

class ChartTitle extends StatelessWidget {
  final String text;

  const ChartTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ), 
    );
  }
}