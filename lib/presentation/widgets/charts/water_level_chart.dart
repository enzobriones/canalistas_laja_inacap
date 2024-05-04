import 'package:canalistas_laja_inacap/presentation/widgets/charts/chart_titles.dart';
import 'package:canalistas_laja_inacap/services/api_service.dart';
import 'package:flutter/material.dart';

class WaterLevelChart extends StatefulWidget {
  const WaterLevelChart({super.key});

  @override
  State<WaterLevelChart> createState() => _WaterLevelChartState();
}

class _WaterLevelChartState extends State<WaterLevelChart> {
  dynamic thingSpeakData;

  @override
  void initState() {
    super.initState();
    getThingSpeakData().then((data) {
      setState(() {
        thingSpeakData = data;
      });
    });
  }

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
              Container(
                height: 500,
                child: thingSpeakData == null
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: thingSpeakData['feeds'].length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title:
                                Text(thingSpeakData['feeds'][index]['field1']),
                            subtitle: Text(
                                thingSpeakData['feeds'][index]['created_at']),
                          );
                        },
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 20,
                  children: [
                    FilledButton.icon(
                      onPressed: () {},
                      label: const Text('Horas'),
                      icon: const Icon(Icons.hourglass_empty_outlined),
                    ),
                    FilledButton.icon(
                      onPressed: () {},
                      label: const Text('Días'),
                      icon: const Icon(Icons.calendar_today_outlined),
                    ),
                    FilledButton.icon(
                      onPressed: () {},
                      label: const Text('Semanas'),
                      icon: const Icon(Icons.calendar_month_outlined),
                    ),
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
