import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/monu_page.dart';
import 'package:test_scanner/login.dart';
import 'package:test_scanner/splash_screen.dart';
import 'package:test_scanner/drawer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent, elevation: 0.0)),
      home: const SplashScreen(),
    );
  }
}

Future<void> requestCameraPermission() async {
  final status = await Permission.camera.request();

  if (status == PermissionStatus.granted) {
    // The user granted camera permission.
  } else if (status == PermissionStatus.denied) {
    // The user denied camera permission.
  } else if (status == PermissionStatus.restricted) {
    // The user cannot grant camera permission.
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? result;
  String? temp = "Anay";

  Future _scanQR() async {
    try {
      requestCameraPermission();
      String? cameraScanResult = await scanner.scan();
      if (cameraScanResult != null && cameraScanResult.isNotEmpty) {
        // Check the scanned content and decide which page to navigate to
        if (cameraScanResult == "menu") {
          // ignore: use_build_context_synchronously
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Monupage();
          }));
        } else if (cameraScanResult == "menu2") {
          // ignore: use_build_context_synchronously
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Monupage2();
          }));
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
    return Scaffold(
      drawer: const NavBar(),
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
      ),
      body: SingleChildScrollView(
        child: Container(
            height: 800,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: glight))),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: glight)),
              ),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: glight)),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Monupage();
                    }));
                  },
                  child: const Text("Blog page"),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text("Login Screen"),
                ),
              ),
            ])),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton.extended(
            backgroundColor: gpurple,
            onPressed: () {
              _scanQR(); // calling a function when user click on button
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            label: const Text(
              "Scan QR",
              style: TextStyle(
                  fontFamily: "NexaTextDemo-Bold", fontSize: 20, color: gskin),
            )),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  // ... Rest of your MyHomePage code remains the same
}
