import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInRight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://innovacionchilena.cl/wp-content/uploads/2018/08/inacap.png',
                      width: 150,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://www.canalistasdellaja.cl/wp-content/uploads/2015/09/logo_acl.png',
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 150,),
            const Text(
              'Bienvenido/a',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            const Text(
              textAlign: TextAlign.center,
              'Aplicación de medición de caudales',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      floatingActionButton: FilledButton.icon(onPressed: () => context.go('/water-level'), icon: const Icon(Icons.play_arrow), label: const Text('Comenzar')),
    );
  }
}
