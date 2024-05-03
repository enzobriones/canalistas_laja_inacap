import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0; //? int para controlar el elemento activo, se debe agregar lógica.

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      children: const [
          Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
              child: Text('Main')),
              //todo: menu items logic
          Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
              child: Text('More options')),
              //todo: menu items logic
        ]
    );
  }
}