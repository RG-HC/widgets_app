import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
        },
        children: [
          NavigationDrawerDestination(
              icon: const Icon(Icons.sd_outlined),
              label: const Text('Home Screen')),
          NavigationDrawerDestination(
              icon: const Icon(Icons.join_inner_rounded),
              label: const Text('Otra Pantalla')),
        ]);
  }
}
