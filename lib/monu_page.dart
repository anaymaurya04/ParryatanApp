import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/main.dart';

class Monupage extends StatelessWidget {
  const Monupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      appBar: AppBar(
         toolbarHeight: 100,
        leading: IconButton(
          icon:Image.asset('lib/icons/arrow-left.png'),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context){return const MyHomePage();}));
        },
        ),
        centerTitle: true,
          title: const Text("Khushrobagh, Prayagraj",  style: TextStyle(
          fontFamily: "Nexa-Trial-Regular",
          fontSize: 20,
          color: gblack), 
          ),
          elevation: 0.0,
      ),
      body: const Column(children: [
        Expanded(child: Text("Hello"))
      ],),
    );
  }
}