import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/account.dart';
import 'package:test_scanner/screens/drawer.dart';
import 'package:test_scanner/main.dart';
import 'package:test_scanner/widgets/monument_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? result;
  String? temp = "Anay";
  void navigateToMonument(
      BuildContext context, String title, String imageAsset, String content) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return MonumentWidget(
        title: title,
        imageAsset: imageAsset,
        content: content,
      );
    }));
  }

  Future _scanQR() async {
    try {
      requestCameraPermission();
      String? cameraScanResult = await scanner.scan();
      if (cameraScanResult != null && cameraScanResult.isNotEmpty) {
        // Check the scanned content and decide which page to navigate to
        if (cameraScanResult.startsWith("monument:")) {
          String monumentId = cameraScanResult.split(":")[1];
          DocumentSnapshot monumentData = await FirebaseFirestore.instance
              .collection("monuments")
              .doc(monumentId)
              .get();

          if (monumentData.exists) {
            String title = monumentData['title'];
            String imageAsset = monumentData['imageAsset'];
            String content = monumentData['content'];

            // Navigate to the monument page with the fetched data
            navigateToMonument(context, title, imageAsset, content);
          } else {
            // Handle case where the monument data doesn't exist
          }
        } else {
          // Handle other cases or show an error message
        }
      }
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: gblack,
                title: const Text(
                  'Alert',
                  style: TextStyle(color: gskin),
                ),
                content: const Text(
                  'Do you want to exit',
                  style: TextStyle(color: gskin),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: gblack, // Set the button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius for button rounding
                      ),
                    ),
                    child: const Text(
                      'No',
                      style: TextStyle(color: gskin),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: gblack, // Set the button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius for button rounding
                        ),
                      ),
                      child: const Text(
                        'Exit',
                        style: TextStyle(color: gskin),
                      ))
                ],
              );
            });
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        drawer: const DrawerW(),
        backgroundColor: gskin,
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
          toolbarHeight: 100,
          title: Text(
            "Hello, $temp",
            style: const TextStyle(
                fontFamily: "Nexa-Trial-Regular", fontSize: 24, color: gblack),
          ),
          actions: [
            Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.person_rounded),
                  color: gblack,
                  iconSize: 30,
                ),
              );
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
              height: 1000,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const Acc(); 
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: glight,
                          ),
                          child: Image.asset('lib/images/Explore.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Your onPressed function goes here
                          // For example, you can navigate to another screen, show a dialog, or perform any action you need.
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: glight,
                          ),
                          child: Image.asset('lib/images/Food.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Your onPressed function goes here
                          // For example, you can navigate to another screen, show a dialog, or perform any action you need.
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: glight,
                          ),
                          child: Image.asset('lib/images/Hotels.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Your onPressed function goes here
                          // For example, you can navigate to another screen, show a dialog, or perform any action you need.
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: glight,
                          ),
                          child: Image.asset('lib/images/Cab.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ])),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: FloatingActionButton.extended(
              backgroundColor: gblack,
              onPressed: () {
                _scanQR(); // calling a function when user click on button
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              label: const Text(
                "Scan QR",
                style: TextStyle(
                    fontFamily: "NexaTextDemo-Bold",
                    fontSize: 20,
                    color: gskin),
              )),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }

  // ... Rest of your MyHomePage code remains the same
}
