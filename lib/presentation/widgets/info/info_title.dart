import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  final String text;
  
  const InfoTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 19,
    ));
  }
}