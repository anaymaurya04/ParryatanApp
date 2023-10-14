import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          icon: Image.asset('lib/icons/arrow-left.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Hotels',
          style: TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TappableRoundedListItem('lib/images/Kanha1.png', () {}),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/HotelPrayag.png', () {
                // Add your action here when the second item is tapped.
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/GC.png', () {
                // Add your action here when the third item is tapped.
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/Yartrik.png', () {
                // Add your action here when the fourth item is tapped.
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class TappableRoundedListItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  TappableRoundedListItem(this.imagePath, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: glight,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
