import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material/material.dart';
import 'package:test_scanner/color/color.dart';

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
      body: Stack(children: [
        Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Opacity(
                          opacity: 0.5,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                  color: gskin,
                                  fontSize: 12,
                                  fontFamily: "Nexa-Trial-Regular"),
                            ),
                          )),
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                          color: gskin,
                          fontFamily: "Nexa-Trial-Regular",
                          fontSize: 30),
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
                                  // Customize the text style of the input
                                  fontSize:
                                      16, // Adjust the font size as needed
                                  color: gskin, // Text color
                                  fontFamily: "Nexa-Trial-Regular",
                                ),
                                decoration: InputDecoration(
                                  // Customize the input decoration
                                  labelText: 'Email Id',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  alignLabelWithHint: true,
                                  hintText:
                                      'Enter your email', // Placeholder text
                                  hintStyle: const TextStyle(
                                    color:
                                        Colors.grey, // Placeholder text color
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    // Border when the field is not focused
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // Border when the field is focused
                                    borderSide: const BorderSide(
                                      color: gskin, // Border color when focused
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                )),
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
                                  // Customize the text style of the input
                                  fontSize:
                                      16, // Adjust the font size as needed
                                  color: gskin, // Text color
                                  fontFamily: "Nexa-Trial-Regular",
                                ),
                                decoration: InputDecoration(
                                  // Customize the input decoration
                                  labelText: 'Password',
                                  labelStyle:
                                      const TextStyle(color: Colors.grey),
                                  alignLabelWithHint: true,
                                  hintText:
                                      'Enter your password', // Placeholder text
                                  hintStyle: const TextStyle(
                                    color:
                                        Colors.grey, // Placeholder text color
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    // Border when the field is not focused
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    // Border when the field is focused
                                    borderSide: const BorderSide(
                                      color: gskin, // Border color when focused
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                )),
                            const Text(
                              'Incorrect Password',
                              style: TextStyle(
                                  color: Color.fromARGB(80, 243, 232, 228),
                                  fontFamily: 'Nexa-Trial-Regular'),
                            ),
                          ]),
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
                            child: Image.asset('lib/images/search.png')),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                            height: 30,
                            child: Image.asset('lib/images/facebook.png')),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: gpurple, // Button background color
                        borderRadius:
                            BorderRadius.circular(13.0), // Button border radius
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // Shadow color
                            blurRadius: 0, // Blur radius (adjust as needed)
                            offset: Offset(
                                4, 4), // Offset (adjust for vertical position)
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.transparent, // Make the button transparent
                          elevation: 0, // Remove button elevation
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ), // Adjust the padding as needed
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
                    Opacity(
                        opacity: 0.5,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'New User? Register',
                            style: TextStyle(
                                color: gskin,
                                fontSize: 12,
                                fontFamily: "Nexa-Trial-Regular"),
                          ),
                        )),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
