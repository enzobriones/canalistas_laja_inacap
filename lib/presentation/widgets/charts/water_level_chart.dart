import 'package:canalistas_laja_inacap/domain/models/chart_data.dart';
import 'package:canalistas_laja_inacap/presentation/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterLevelChart extends StatelessWidget {
  const WaterLevelChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final thingSpeakData = ref.watch(thingSpeakDataProvider);
        return thingSpeakData.when(
          data: (data) {
            return SfCartesianChart(
              title: const ChartTitle(text: 'Altura del agua'),
              primaryXAxis: DateTimeAxis(),
                series: <CartesianSeries<dynamic, dynamic>>[
                LineSeries<ChartData, DateTime>(
                  dataSource: data,
                  xValueMapper: (ChartData data, _) => data.createdAt,
                  yValueMapper: (ChartData data, _) => data.value,
                )
              ],
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text('Error: $error'),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}

