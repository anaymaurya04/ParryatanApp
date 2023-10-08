import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: gblack,
        body: SafeArea(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              const SizedBox(height: 50),
              const Flexible(flex:2,child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: "Nexa-Trial-Regular",
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 235, 235),
                      fontSize: 35),
                )),
                const SizedBox(height: 10,width: double.infinity,),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(decoration: BoxDecoration(color: Colors.grey),),
                  ),
                )),
              Flexible(child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(decoration: BoxDecoration(color: Colors.grey),),
                  ),
                )),
              Flexible(child: Container(color: Colors.brown,)),
              Flexible(child: Container(color: Colors.grey,))
            ]))));
  }
}
