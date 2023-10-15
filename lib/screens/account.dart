import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Acc extends StatefulWidget {
  const Acc({Key? key}) : super(key: key);

  @override
  _AccState createState() => _AccState();
}

class _AccState extends State<Acc> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEditMode = false;

  String? userName = "User"; // Default value, change as needed
  String? userEmail = "user@example.com"; // Default value, change as needed

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Fetch the user's data from Firestore using the user's UID
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .get();

      if (userDoc.exists) {
        setState(() {
          userName = userDoc['name'];
          userEmail = userDoc['email'];
        });
      }
    }
  }

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
          'Account',
          style: TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: gpurple,
              width: double.infinity,
              height: 240,
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('lib/icons/download.jpg'),
                      ),
                    ),
                  ),
                  Text(
                    userName ?? "User",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Nexa-Trial-Regular"),
                  ),
                  const SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Text(userEmail ?? "user@example.com",
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 14,
                          fontFamily: "NexaTextDemo-Bold"))
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: emailController,
                      style: const TextStyle(
                        fontSize: 16,
                        color: gskin,
                        fontFamily: "Nexa-Trial-Regular",
                      ),
                      decoration: InputDecoration(
                        labelText: userName ?? "User",
                        labelStyle: const TextStyle(color: Colors.black),
                        alignLabelWithHint: true,
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        enabled:
                            isEditMode, // Enable or disable based on edit mode
                        // Other decoration properties...
                      ),
                    ),
                    if (!isEditMode)
                      const Text(
                        'Name',
                        style: TextStyle(
                            color: Color.fromARGB(255, 19, 6, 2),
                            fontFamily: 'Nexa-Trial-Regular'),
                      ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      controller: passwordController,
                      style: const TextStyle(
                        fontSize: 16,
                        color: gskin,
                        fontFamily: "Nexa-Trial-Regular",
                      ),
                      decoration: InputDecoration(
                        labelText: 'India',
                        labelStyle: const TextStyle(color: Colors.black),
                        alignLabelWithHint: true,
                        hintText: 'Nationality',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        enabled: isEditMode, // Enable or disable based on edit
                        // Other decoration properties...
                      ),
                    ),
                    if (!isEditMode)
                      const SizedBox(
                        height: 10,
                      ), // Adjusted height for better spacing
                    if (!isEditMode)
                      const Text(
                        'Nationality',
                        style: TextStyle(
                          color: Color.fromARGB(255, 14, 6, 3),
                          fontFamily: 'Nexa-Trial-Regular',
                        ),
                      ),
                    Row(
                      children: [
                        Spacer(),
                        IconButton(
                          icon: Icon(isEditMode ? Icons.save : Icons.edit),
                          onPressed: () {
                            setState(() {
                              isEditMode = !isEditMode;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
