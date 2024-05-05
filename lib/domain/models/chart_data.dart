import 'package:timezone/timezone.dart';

class ChartData {
  final DateTime createdAt;
  final double value;
  final Location location;

  ChartData(this.createdAt, this.value, this.location);

  factory ChartData.fromJson(Map<String, dynamic> json, Location location) {
    final createdAt = TZDateTime.parse(location, json['created_at']);

    return ChartData(
      createdAt.toLocal(),
      double.parse(json['field1']),
      location,
    );
  }
}