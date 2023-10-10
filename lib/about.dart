import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/drawer.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      drawer: const DrawerW(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('lib/icons/hamburger.png'),
            );
          }),
        ),
        centerTitle: true,
        title: const Text(
          "About",
          style: TextStyle(
              fontFamily: "Nexa-Trial-Regular", fontSize: 22, color: gblack),
        ),
      ),
      body: Container(
        height: 800,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(44, 0, 0, 0), // Shadow color
                      blurRadius: 7, // Blur radius (adjust as needed)
                      offset:
                          Offset(4, 4), // Offset (adjust for vertical position)
                    ),
                  ],
                ),
                child: const Text(
                  "Team Parryatan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "NexaTextDemo-Bold",
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text(
              "Welcome to our app. We are Team Parryatan, a group of passionate developers who participated in the UHack 2023 hackathon. Our mission is to create innovative solutions that make a difference.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Nexa-Trial-Regular",
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20), // Add more space
            Column(
  children: [
    // First Box with Image
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(44, 0, 0, 0),
            blurRadius: 7,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Image in a Circle
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_image.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Add some space between the image and text
          // Text
          const Expanded(
            child: Text(
              "Team Parryatan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),

    const SizedBox(height: 20, width: 20), // Add spacing between the boxes

    // Second Box with Image
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(44, 0, 0, 0),
            blurRadius: 7,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Image in a Circle
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_image.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Add some space between the image and text
          // Text
          const Expanded(
            child: Text(
              "Team Parryatan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),

    const SizedBox(height: 20, width: 20), // Add spacing between the boxes

    // Third Box with Image
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(44, 0, 0, 0),
            blurRadius: 7,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Image in a Circle
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_image.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Add some space between the image and text
          // Text
          const Expanded(
            child: Text(
              "Team Parryatan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
    const SizedBox(height: 20,width: 20,),
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(44, 0, 0, 0),
            blurRadius: 7,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Image in a Circle
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile_image.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Add some space between the image and text
          // Text
          const Expanded(
            child: Text(
              "Team Parryatan",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),

    const SizedBox(height: 20, width: 20), // Add spacing between the boxes

    // Text Section
    const Text(
      "Thank you for using our app and supporting us on our journey!",
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Nexa-Trial-Regular",
      ),
    ),
  ],
),
          ]
    )
  ));}
}
