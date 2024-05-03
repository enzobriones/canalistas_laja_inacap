import 'package:canalistas_laja_inacap/presentation/widgets/charts/chart_titles.dart';
import 'package:flutter/material.dart';

class WaterLevelChart extends StatelessWidget {
  const WaterLevelChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              const ChartTitle(text: 'Altura del agua'),
              const Placeholder(
                fallbackHeight: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 20,
                  children: [
                    ElevatedButton.icon(onPressed: () {}, label: const Text('Horas'), icon: const Icon(Icons.hourglass_empty_outlined),),
                    ElevatedButton.icon(onPressed: () {}, label: const Text('Días'), icon: const Icon(Icons.calendar_today_outlined),),
                    ElevatedButton.icon(onPressed: () {}, label: const Text('Semanas'), icon: const Icon(Icons.calendar_month_outlined),),
                  ],

                ),
              ),
            ]),
            const Column(children: [
              ChartTitle(text: 'Titulo gráfico'),
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