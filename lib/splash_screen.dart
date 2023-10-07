import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: 80,
                width: 80,
                child: Image.asset(
                  "lib/icons/Parryatan App Icon.png",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          const Center(
            child: Text(
              'Parryatan',
              style: TextStyle(
                  fontSize: 25, color: gblack, fontFamily: "NexaTextDemo-Bold"),
            ),
          )
        ],
      ),
    );
  }
}
