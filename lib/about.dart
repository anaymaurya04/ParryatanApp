import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/drawer.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      drawer: const DrawerW(),
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
              fontFamily: "Nexa-Trial-Regular", fontSize: 22, color: gblack),
        ),
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: glight),
                child: const Text(
                  "Team Parryatan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "NexaTextDemo-Bold",
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
              width: 10,
            ),
              const Text(
                "Welcome to our app. We are Team Parryatan, a group of passionate developers who participated in the UHack 2023 hackathon. Our mission is to create innovative solutions that make a difference.",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nexa-Trial-Regular",
                    ),
                    textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20), // Add more space

              const Text(
                "Thank you for using our app and supporting us on our journey!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Nexa-Trial-Regular",
                ),
              ),

          ],
        ),
      ),
    );
  }
}
