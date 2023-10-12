import 'package:flutter/material.dart';
import 'package:test_scanner/widgets/drawerhead.dart';
import 'package:test_scanner/widgets/drawerlist.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SingleChildScrollView(
        child: Column(children: [DrawHead(), DrawerList()]),
      ),
    );
  }
}
