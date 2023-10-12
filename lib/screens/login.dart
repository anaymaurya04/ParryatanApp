// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:test_scanner/main.dart';
import 'package:material/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/homepage.dart';
import 'package:test_scanner/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      'Login',
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
                            style: const TextStyle(
                              fontSize: 16,
                              color: gskin,
                              fontFamily: "Nexa-Trial-Regular",
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
                      height: 50,
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
                        onPressed: () {},
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
