import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/drawer.dart';

class About extends StatelessWidget {
  const About({super.key});

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
        ),
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          "About",
          style: TextStyle(
              fontFamily: "Nexa-Trial-Regular", fontSize: 24, color: gblack),
        ),
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: glight)))
          ],
        ),
      ),
    );
  }
}
