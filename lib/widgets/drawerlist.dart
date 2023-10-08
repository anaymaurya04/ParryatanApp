import 'package:flutter/material.dart';
import 'package:test_scanner/color/color.dart';

class DrawerList extends StatefulWidget {
  

  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
 var currentPage = Drawersection.home;

  @override
  Widget build(BuildContext context) {
     return Container(
      color: gskin,
      width: double.infinity,
      height: 900,
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(id: 1, title: 'Account', icon: Icons.person_rounded,selected: currentPage == Drawersection.account? true:false),
          menuItem(id: 2, title: 'Homepage', icon: Icons.home,selected: currentPage == Drawersection.home? true:false),
          menuItem(id: 3, title: 'Settings', icon: Icons.settings_rounded,selected: currentPage == Drawersection.settings? true:false),
          menuItem(id: 4, title: 'About', icon: Icons.info_outlined,selected: currentPage == Drawersection.about? true:false)
        ],
      ),
      );
  }
}

Widget menuItem({
  required int id,
  required String title,
  required IconData icon,
  required bool selected,  
}){
  return Material( color: selected ? Colors.white : Colors.transparent,
  child: InkWell(
    onTap: (){
      
    },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(icon)
              ),
               Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: gblack,
                        fontFamily: "Nexa-Trial-Regular",
                        fontSize: 20),
                  ))
            ],
          ),
        ),
      ),);
}
enum Drawersection{
  account,
  home,
  settings,
  about
}