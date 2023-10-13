// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:test_scanner/main.dart';
import 'package:material/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/homepage.dart';
import 'package:test_scanner/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // If login is successful, navigate to the home page or perform any desired action
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const MyHomePage();
      }));
    } catch (e) {
      // Handle login errors (e.g., incorrect password, user not found)
      print("Error: $e");
      // Show error message to the user
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Failed to sign in. Please check your credentials."),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 34, 35, 58),
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 26.0, horizontal: 0.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Opacity(
                opacity: 0.5,
                child: TextButton(
                  onPressed: () {
                    requestCameraPermission();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyHomePage();
                    }));
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color.fromARGB(223, 243, 232, 228),
                      fontSize: 12,
                      fontFamily: "Nexa-Trial-Regular",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(223, 243, 232, 228),
                        fontFamily: "Nexa-Trial-Regular",
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: _emailController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(223, 243, 232, 228),
                            ),
                            decoration: InputDecoration(
                              labelText: 'Email Id',
                              labelStyle: const TextStyle(color: Colors.grey),
                              alignLabelWithHint: true,
                              hintText: 'Enter your email',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(223, 243, 232, 228),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          const Text(
                            'Enter a valid email id',
                            style: TextStyle(
                                color: Color.fromARGB(80, 243, 232, 228),
                                fontFamily: 'Nexa-Trial-Regular'),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(223, 243, 232, 228),
                            ),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: const TextStyle(color: Colors.grey),
                              alignLabelWithHint: true,
                              hintText: 'Enter your password',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(223, 243, 232, 228),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10, // Adjusted height for better spacing
                          ),
                          const Text(
                            'Incorrect Password',
                            style: TextStyle(
                              color: Color.fromARGB(80, 243, 232, 228),
                              fontFamily: 'Nexa-Trial-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Image.asset('lib/images/search.png'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 30,
                          child: Image.asset('lib/images/facebook.png'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(225, 74, 78, 105),
                        borderRadius: BorderRadius.circular(13.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 0,
                            offset: Offset(4, 4),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          _signInWithEmailAndPassword();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Nexa-Trial-Regular",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10, // Adjusted height for better spacing
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignupPage();
                          }));
                        },
                        child: const Text(
                          'New User? Register',
                          style: TextStyle(
                            color: Color.fromARGB(223, 243, 232, 228),
                            fontSize: 12,
                            fontFamily: "Nexa-Trial-Regular",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
