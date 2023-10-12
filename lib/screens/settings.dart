import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/account.dart';
import 'package:test_scanner/screens/login.dart';
import 'package:test_scanner/screens/settingscreen/feedback.dart';
import 'package:test_scanner/screens/settingscreen/language.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
          'Settings',
          style: TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
       body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: SizedBox(height:20,width:20, child: Image.asset('lib/icons/user.png')),
              title: const Text('Account', style: TextStyle(fontSize: 22, fontFamily: "Nexa-Trial-Regular")),
              trailing: SizedBox(height: 20,width: 20,child: Image.asset('lib/icons/angle-right.png')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Acc()),
                );
              },
            ),
            const Divider(height: 20, thickness: 2),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            ListTile(
              leading: SizedBox(height:20,width:20, child: Image.asset('lib/icons/language.png')),
              title: const Text('Language', style: TextStyle(fontSize: 22, fontFamily: "Nexa-Trial-Regular")),
              trailing: SizedBox(height: 20,width: 20,child: Image.asset('lib/icons/angle-right.png')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Lang()),
                );
              },
            ),
            const Divider(height: 20, thickness: 2),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            ListTile(
              leading: SizedBox(height:20,width:20, child: Image.asset('lib/icons/feedback.png')),
              title: const Text('Feedback', style: TextStyle(fontSize: 22, fontFamily: "Nexa-Trial-Regular")),
              trailing: SizedBox(height: 20,width: 20,child: Image.asset('lib/icons/angle-right.png')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Feedb()),
                );
              },
            ),
            const Divider(height: 20, thickness: 2),
            const SizedBox(height: 10),
            ListTile(
              leading: SizedBox(height:20,width:30, child: Image.asset('lib/icons/logout.png')),
              title: const Text('LogOut', style: TextStyle(fontSize: 22, fontFamily: "Nexa-Trial-Regular")),
              trailing: SizedBox(height: 20,width: 20,child: Image.asset('lib/icons/angle-right.png')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
            const Divider(height: 20, thickness: 2),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
