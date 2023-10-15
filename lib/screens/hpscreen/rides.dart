import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:url_launcher/url_launcher.dart';

class Rides extends StatelessWidget {
  const Rides({super.key});

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
          'Rides',
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
          height: 850,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TappableRoundedListItem('lib/images/car.png', () {
                launchUrl(
                    Uri.parse("https://www.uber.com/in/en/ride/ubertaxi/"),
                    mode: LaunchMode.inAppWebView);
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/autotaxi.png', () {
                launchUrl(
                    Uri.parse("https://www.uber.com/in/en/ride/uber-auto/"),
                    mode: LaunchMode.inAppWebView);
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/bike.png', () {
                launchUrl(Uri.parse("https://www.rapido.bike/"),
                    mode: LaunchMode.inAppWebView);
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
