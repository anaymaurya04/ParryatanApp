
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/monu_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
} 


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0)
      ),
      home: const MyHomePage(),
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? result = "Val";
  String? temp = "Anay";
  Future _scanQR() async {
    try {
      requestCameraPermission();
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result = cameraScanResult; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gskin,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
      toolbarHeight: 100,
        title:  Text(
          "Hello, $temp",
        style: const TextStyle(
          fontFamily: "Nexa-Trial-Regular",
          fontSize: 24,
          color: gblack
        ),),
),
      body: SingleChildScrollView( child: Container(
        height: 800,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: gskin))),
            const SizedBox(height: 15, width: 15,),
            Expanded(child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: gskin)),),
            const SizedBox(height: 15, width: 15,),
            Expanded(child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),color: gskin)),),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context){return const Monupage();}));
                
              },child: const Text("Next page"),),
            )
          ]
        )
        ),
      ),
     
      floatingActionButton: Padding(
        padding:  const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton.extended(
          backgroundColor: gpurple,
            onPressed: () {
              _scanQR(); // calling a function when user click on button
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            label: const Text("Scan QR", style: TextStyle(fontFamily: "NexaTextDemo-Bold",
            fontSize: 20, color:gskin ),)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        
    );
  }
}