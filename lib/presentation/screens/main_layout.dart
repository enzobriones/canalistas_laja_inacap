import 'package:canalistas_laja_inacap/presentation/widgets/appbar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  static String name = 'home_screen';
  
  const MainLayout({super.key, required this.child});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        centerTitle: true,
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon:  IconButton(
              onPressed: () => context.push('/water-level'), 
              icon: const Icon(Icons.height)
            ),
            label: 'Altura',
            backgroundColor: Colors.grey.shade50,

          ),
          BottomNavigationBarItem(
            icon:  const Icon(Icons.thermostat),
            label: 'Temperatura',
            backgroundColor: Colors.grey.shade50,
          ),
          const BottomNavigationBarItem(
            icon:  Icon(Icons.water_drop_outlined),
            label: 'Humedad'
          ),
        ],
      ),
    );
  }
}