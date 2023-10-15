import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';
import 'package:test_scanner/screens/monu_page.dart';
import 'package:test_scanner/widgets/monument_widget.dart';

class Explore extends StatelessWidget {
   const Explore({super.key,});

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
          'Explore',
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
              TappableRoundedListItem('lib/images/KB.png', () {
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const MonumentWidget(title: 'Khusrobagh', imageAsset: 'lib/images/KB.png', content: 'Khusro Bagh is a large historical garden, in which tombs of Prince Khusro, the eldest son of Emperor Jahangir and Sultan Begum are located. The three sandstone mausoleums within this walled garden, represent an exquisite example of Mughal architecture. The design of its main entrance, the surrounding gardens and the three-tier tomb of Sultan Begum has been attributed to Aqa Reza, Jahangir’s principal court artist. The tomb of Khusro is the last of the three tombs. Khusro was first imprisoned within the garden after he rebelled against his father Jahangir. He was killed in an attempt to escape on the orders of Khusro’s brother and Jahangir’s third son Khurram, who later became the Emperor Shah Jahan."');
                          }));

              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/CAP.png', () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const MonumentWidget(title: 'Chandrashekar Azad Park', imageAsset: 'lib/images/CAP.png', content: 'Chandrashekhar Azad Park (also known by its former name Alfred Park, and Company Bagh during the Company Raj) is a public park in Prayagraj, Uttar Pradesh, India. Built in 1870 to mark Prince Alfreds visit to the city, with an area of 133 acres, it is the biggest park in Prayagraj. It was renamed by the Uttar Pradesh Government after revolutionary Chandra Shekhar Azad, who sacrificed his life here during the Indian independence movement in 1931.');
                          }));
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/PF.png', () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const MonumentWidget(title: 'Prayagraj Fort', imageAsset: 'lib/images/PF.png', content: 'Allahabad Fort is a fort built by the Mughal emperor Akbar at Prayagraj in 1583. The fort stands on the banks of the Yamuna, near its confluence with the Ganges. It is classified by the Archaeological Survey of India as a monument of national importance.[1]A stone inscription inside fort describe 1583 as a foundation year but this stone inscription related to Ashok which was early period situated in Kosambi and taken from there to Allahabad Fort.');
                          }));
              }),
              const SizedBox(height: 15),
              TappableRoundedListItem('lib/images/GF.png', () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const MonumentWidget(title: 'Garhwa Fort', imageAsset: 'lib/images/GF.png', content: 'Garhwa fort is a temple complex in Prayagraj, Uttar Pradesh, India, belonging to the Gupta Period. The ruins of the temple were fortified in 18th century by Raja Baghel Raja Vikramaditya. The fortification consisted of square enclosure and parapets, giving a fortress kind of look. The temple has many relics belonging to the Gupta period, which date back to as old as 5th and 6th century. The most notable item in the fort is a figure representing all 10 avatars of Lord Vishnu, belonging to 11th or 12th century');
                          }));
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

  const TappableRoundedListItem(this.imagePath, this.onTap, {super.key});

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
