import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';

class FoodCon extends StatelessWidget {
  const FoodCon({super.key});

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
          'Menu',
          style: TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(children: [
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'lib/images/donut.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
             const SizedBox(height: 20),
            // const SizedBox(
            //     width: 16), // Add some space between the image and text
            // Text
            const Expanded(
              child: Text(
                "Donut",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "NexaTextDemo-Bold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            const Positioned(
            top: 5, // Adjust the vertical position
            right: 5, // Adjust the horizontal position
            child: Text(
              '₹100', // Display the price
              style: TextStyle(
                fontSize: 14,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),))
          ]),
        ),
        const SizedBox(height: 20),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'lib/images/thali.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
    
            // const SizedBox(
            //     width: 16), // Add some space between the image and text
            // Text
            const Expanded(
              child: Text(
                "Burger + Fries",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "NexaTextDemo-Bold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            const Positioned(
            top: 5, // Adjust the vertical position
            right: 5, // Adjust the horizontal position
            child: Text(
              '₹120', // Display the price
              style: TextStyle(
                fontSize: 14,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),))
          ]),
        ),
        const SizedBox(height: 20),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'lib/images/thali2.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // const SizedBox(
            //     width: 16), // Add some space between the image and text
            // Text
            const Expanded(
              child: Text(
                "Indian Thali",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "NexaTextDemo-Bold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            const Positioned(
            top: 5, // Adjust the vertical position
            right: 5, // Adjust the horizontal position
            child: Text(
              '₹300', // Display the price
              style: TextStyle(
                fontSize: 14,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),))
          ]),
        ),
        const SizedBox(height: 20),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'lib/images/pizza.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // const SizedBox(
            //     width: 16), // Add some space between the image and text
            // Text
            const Expanded(
              child: Text(
                "Pizza",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "NexaTextDemo-Bold",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Positioned(
            top: 5, // Adjust the vertical position
            right: 5, // Adjust the horizontal position
            child: Text(
              '₹500', // Display the price
              style: TextStyle(
                fontSize: 14,
                fontFamily: "NexaTextDemo-Bold",
                fontWeight: FontWeight.bold,
              ),))
          ],),
        ),
      ]),
    );
  }
}
