import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/drawer.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: gskin,
      drawer: DrawerW(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('lib/icons/hamburger.png'),
            );
          }),
        ),)
    );
  }
}