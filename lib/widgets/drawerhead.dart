import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DrawHead extends StatefulWidget {
  const DrawHead({super.key});

  @override
  _DrawHeadState createState() => _DrawHeadState();
}

class _DrawHeadState extends State<DrawHead> {
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
    return Container(
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
    );
  }
}
