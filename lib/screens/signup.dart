import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_scanner/screens/homepage.dart';
import 'package:test_scanner/screens/login.dart';
import 'package:test_scanner/main.dart';
import 'package:test_scanner/color/color.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> _signUp() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      User? user = userCredential.user;

      if (user != null) {
        // Store additional user data in Firestore
        await _firestore.collection('users').doc(user.uid).set({
          'name': _nameController.text,
          'email': _emailController.text,
        });

        // Navigate to the home page after successful signup
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      }
    } catch (e) {
      print("Error: $e");
      // Handle signup errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gblack,
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
                      color: gskin,
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
                      'Sign Up',
                      style: TextStyle(
                        color: gskin,
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
                            controller: _nameController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: gskin,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: const TextStyle(color: Colors.grey),
                              alignLabelWithHint: true,
                              hintText: 'Enter your full name',
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
                                  color: gskin,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          const Text(
                            'Name cannot be empty',
                            style: TextStyle(
                                color: Color.fromARGB(80, 243, 232, 228),
                                fontFamily: 'Nexa-Trial-Regular'),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            controller: _emailController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: gskin,
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
                                  color: gskin,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10, // Adjusted height for better spacing
                          ),
                          const Text(
                            'Enter a valid email',
                            style: TextStyle(
                              color: Color.fromARGB(80, 243, 232, 228),
                              fontFamily: 'Nexa-Trial-Regular',
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: gskin,
                              fontFamily: "Nexa-Trial-Regular",
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
                                  color: gskin,
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
                      height: 25,
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: gpurple,
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
                        onPressed: _signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
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
                            return const LoginPage();
                          }));
                        },
                        child: const Text(
                          'Already Registed? Login',
                          style: TextStyle(
                            color: gskin,
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
