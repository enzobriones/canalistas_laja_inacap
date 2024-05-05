import 'dart:async';

import 'package:canalistas_laja_inacap/domain/models/chart_data.dart';
import 'package:canalistas_laja_inacap/services/api_service.dart';
import 'package:canalistas_laja_inacap/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterLevelChart extends StatefulWidget {
  const WaterLevelChart({super.key});

  @override
  State<WaterLevelChart> createState() => _WaterLevelChartState();
}

class _WaterLevelChartState extends State<WaterLevelChart> {
  late Stream<List<ChartData>> _dataStream;
  late StreamSubscription _subscription;
  List<ChartData> _chartData = [];

  @override
  void initState() {
    super.initState();
    final location = getLocation('America/Santiago');
    _dataStream = getThingSpeakDataStream(location);
    _subscription = _dataStream.listen((data) {
      setState(() {
        _chartData = data; 
      });
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: const ChartTitle(
        text: 'Altura de agua (cm)',
        textStyle: TextStyle(
          fontWeight: FontWeight.bold
        )
      ),
      primaryXAxis: const DateTimeAxis(),
      series: <CartesianSeries>[
        LineSeries<ChartData, DateTime>(
          dataSource: _chartData,
          xValueMapper: (ChartData data, _) => data.createdAt,
          yValueMapper: (ChartData data, _) => data.value,
        )
      ],
    );
  }
}