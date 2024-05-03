import 'package:canalistas_laja_inacap/presentation/widgets/appbar/appbar_title.dart';
import 'package:canalistas_laja_inacap/presentation/widgets/charts/water_level_chart.dart';
import 'package:canalistas_laja_inacap/presentation/widgets/shared/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        centerTitle: true,
      ),
      body: const WaterLevelChart(),
      endDrawer: const SideMenu(),
    );
  }
}
