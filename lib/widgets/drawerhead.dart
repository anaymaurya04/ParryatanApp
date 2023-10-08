import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';

class DrawHead extends StatelessWidget {
  const DrawHead({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: gpurple,
      width: double.infinity,
       height: 240,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('lib/icons/download.jpg'),
              ),
            ),
          ),
           const Text(
            "Anay Maurya",
            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Nexa-Trial-Regular"),
          ),
          const SizedBox(height: 5, width: 5,),
          Text(
            "anaymaurya04@gmail.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
               fontFamily: "NexaTextDemo-Bold"))
                ],
      ),
    );
  }
}