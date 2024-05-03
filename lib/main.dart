import 'package:canalistas_laja_inacap/config/theme/app_theme.dart';
import 'package:canalistas_laja_inacap/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme(selectedColor: 3).getTheme(),
    );
  }
}
