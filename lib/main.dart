import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_scanner/screens/splash_screen.dart';

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

