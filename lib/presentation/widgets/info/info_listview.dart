import 'package:flutter/material.dart';

class InfoListView extends StatelessWidget {
  final int waterLevel;
  final int temperature;
  final int humidity;

  const InfoListView({
    super.key,
    required this.waterLevel,
    required this.temperature,
    required this.humidity
  });

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Column(
              children: [
                Text('Altura del agua: ${waterLevel.toString()}'),
                Text('Temperatura: ${waterLevel.toString()}'),
                Text('Humedad: ${waterLevel.toString()}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
