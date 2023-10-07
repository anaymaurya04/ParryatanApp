import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/main.dart';

class Monupage extends StatelessWidget {
  const Monupage({super.key});

  @override
  Widget build(BuildContext context) {
    String? content =
        "Khusro Bagh is a large historical garden, in which tombs of Prince Khusro, the eldest son of Emperor Jahangir and Sultan Begum are located. The three sandstone mausoleums within this walled garden, represent an exquisite example of Mughal architecture. The design of its main entrance, the surrounding gardens and the three-tier tomb of Sultan Begum has been attributed to Aqa Reza, Jahangir’s principal court artist. The tomb of Khusro is the last of the three tombs. Khusro was first imprisoned within the garden after he rebelled against his father Jahangir. He was killed in an attempt to escape on the orders of Khusro’s brother and Jahangir’s third son Khurram, who later became the Emperor Shah Jahan.";
    return Scaffold(
        backgroundColor: gskin,
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            icon: Image.asset('lib/icons/arrow-left.png'),
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return const MyHomePage();
              }));
            },
          ),
          centerTitle: true,
          title: const Text(
            "Khushrobagh, Prayagraj",
            style: TextStyle(
                fontFamily: "Nexa-Trial-Regular", fontSize: 20, color: gblack),
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Container(
          height: 700,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    'lib/images/Khusrubagh Image.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
                width: 1,
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), color: glight),
                  child: Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          content,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              fontSize: 17, fontFamily: "Nexa-Trial-Regular"),
                        )),
                  )),
                ),
              ),
            ],
          ),
        )));
  }
}
