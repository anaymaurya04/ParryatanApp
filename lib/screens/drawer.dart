import 'package:flutter/material.dart';
import 'package:test_scanner/widgets/drawerhead.dart';
import 'package:test_scanner/widgets/drawerlist.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: const Column(children: [DrawHead(), DrawerList()]),
        ),
      ),
    );
  }
}