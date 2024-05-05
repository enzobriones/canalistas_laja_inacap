import 'package:canalistas_laja_inacap/presentation/widgets/charts/buttons_row.dart';
import 'package:canalistas_laja_inacap/presentation/widgets/charts/water_level_chart.dart';
import 'package:flutter/material.dart';

class WaterLevelBox extends StatelessWidget {
  const WaterLevelBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              WaterLevelChart(),
              ButtonsRow(),
            ]),
            Column(children: [
              Placeholder(
                fallbackHeight: 250,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
