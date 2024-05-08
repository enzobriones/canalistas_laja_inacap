import 'package:canalistas_laja_inacap/presentation/widgets/charts/water_level_box.dart';
import 'package:flutter/material.dart';

class WaterLevelScreen extends StatelessWidget {
  static String name = 'water_level';

  const WaterLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(children: [
          WaterLevelBox(),
        ]),
    );
  }
}
