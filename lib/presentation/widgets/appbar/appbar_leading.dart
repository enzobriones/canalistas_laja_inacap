import 'package:flutter/material.dart';

class AppbarLeading extends StatelessWidget {
  const AppbarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: NetworkImage(
      'https://www.canalistasdellaja.cl/wp-content/uploads/2015/09/logo_acl.png'
      )
    );
  }
}