import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/main.dart';
import 'package:test_scanner/widgets/monument_widget.dart';

class Monupage extends StatelessWidget {
  const Monupage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MonumentWidget(
      title: "Khushrobagh, Prayagraj",
      imageAsset: 'lib/images/Khusrubagh Image.png',
      content:
          "Khusro Bagh is a large historical garden, in which tombs of Prince Khusro, the eldest son of Emperor Jahangir and Sultan Begum are located. The three sandstone mausoleums within this walled garden, represent an exquisite example of Mughal architecture. The design of its main entrance, the surrounding gardens and the three-tier tomb of Sultan Begum has been attributed to Aqa Reza, Jahangir’s principal court artist. The tomb of Khusro is the last of the three tombs. Khusro was first imprisoned within the garden after he rebelled against his father Jahangir. He was killed in an attempt to escape on the orders of Khusro’s brother and Jahangir’s third son Khurram, who later became the Emperor Shah Jahan.", // Your content here
    );
  }
}

class Monupage2 extends StatelessWidget {
  const Monupage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MonumentWidget(
        title: "Khushrobagh, Prayagraj",
        imageAsset: 'lib/images/Khusrubagh Image.png',
        content: "Hello");
  }
}
