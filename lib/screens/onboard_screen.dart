import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/login.dart';
import 'package:test_scanner/main.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late LiquidController _liquidController;

  @override
  void initState() {
    super.initState();
    _liquidController = LiquidController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: _liquidController,
            enableLoop: false,
            disableUserGesture: false,
            pages: [
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 34, 35, 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome to\nParryatan App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: gskin,
                          fontFamily: "NexaTextDemo-Bold",
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 8, // Adjust the circle size as needed
                              height: 8, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: gskin, // Circle color
                              ),
                            ),
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            ),
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: gpurple, // Button background color
                          borderRadius: BorderRadius.circular(
                              13.0), // Button border radius
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26, // Shadow color
                              blurRadius: 0, // Blur radius (adjust as needed)
                              offset: Offset(4,
                                  4), // Offset (adjust for vertical position)
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            _liquidController.animateToPage(
                              page: 1,
                              duration: 350,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Make the button transparent
                            elevation: 0, // Remove button elevation
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ), // Adjust the padding as needed
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Nexa-Trial-Regular",
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                          opacity: 0.5,
                          child: TextButton(
                            onPressed: () {
                              requestCameraPermission();
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: gskin,
                                  fontSize: 12,
                                  fontFamily: "Nexa-Trial-Regular"),
                            ),
                          )),
                    ]),
              ),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 34, 35, 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Scan\nand Travel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: gskin,
                          fontFamily: "NexaTextDemo-Bold",
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            ),
                            Container(
                              width: 8, // Adjust the circle size as needed
                              height: 8, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: gskin, // Circle color
                              ),
                            ),
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: gpurple, // Button background color
                          borderRadius: BorderRadius.circular(
                              13.0), // Button border radius
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26, // Shadow color
                              blurRadius: 0, // Blur radius (adjust as needed)
                              offset: Offset(4,
                                  4), // Offset (adjust for vertical position)
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            _liquidController.animateToPage(
                                page: 2, duration: 350);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Make the button transparent
                            elevation: 0, // Remove button elevation
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ), // Adjust the padding as needed
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Nexa-Trial-Regular",
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                          opacity: 0.5,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: gskin,
                                  fontSize: 12,
                                  fontFamily: "Nexa-Trial-Regular"),
                            ),
                          )),
                    ]),
              ),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 34, 35, 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Recognize\nthe monument',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: gskin,
                          fontFamily: "NexaTextDemo-Bold",
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            ),
                            Container(
                              width: 6, // Adjust the circle size as needed
                              height: 6, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(
                                    80, 243, 232, 228), // Circle color
                              ),
                            ),
                            Container(
                              width: 8, // Adjust the circle size as needed
                              height: 8, // Adjust the circle size as needed
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: gskin, // Circle color
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: gpurple, // Button background color
                          borderRadius: BorderRadius.circular(
                              13.0), // Button border radius
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26, // Shadow color
                              blurRadius: 0, // Blur radius (adjust as needed)
                              offset: Offset(4,
                                  4), // Offset (adjust for vertical position)
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Make the button transparent
                            elevation: 0, // Remove button elevation
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25.0,
                            ), // Adjust the padding as needed
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Nexa-Trial-Regular",
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
