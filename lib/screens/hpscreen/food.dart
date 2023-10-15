import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/foodcon.dart';

class Food extends StatelessWidget {
  const Food({super.key});

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
          'Food',
          style: TextStyle(
            fontFamily: "Nexa-Trial-Regular",
            fontSize: 20,
            color: gblack,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              TappableRoundedListItem('lib/images/ElChico.png', () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const FoodCon();}));
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/Eden.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const FoodCon();}));
              
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/Dewsis.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const FoodCon();}));
              
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/Pind.png', () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const FoodCon();}));
              
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class TappableRoundedListItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  TappableRoundedListItem(this.imagePath, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: glight,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
