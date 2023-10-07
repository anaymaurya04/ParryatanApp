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
      body: SingleChildScrollView(child: Container( 
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Expanded(child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: gskin)),),
            const SizedBox(height: 10, width: 10,),
        Expanded(child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: gskin)),),
      ],),))
    );
  }
}