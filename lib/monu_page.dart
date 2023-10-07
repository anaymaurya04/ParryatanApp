import 'package:flutter/material.dart';

class Monupage extends StatelessWidget {
  const Monupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Hello"),
      ),
      body: const Column(children: [
        Expanded(child: Text("Hello"))
      ],),
    );
  }
}