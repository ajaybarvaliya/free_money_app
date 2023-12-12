import 'package:flutter/material.dart';

import 'Balance_Profile.dart';
import 'Comon.dart';
import 'Profile_General.dart';
import 'Statistic.dart';
import 'Wallet_Cards.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screen = [
    Balance_prifile(),
    Statistic(),
    Wallet_Cards(),
    profile_general(),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[select],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {});
          select = value;
        },
        currentIndex: select,
        selectedItemColor: ColorCodes.Pink,
        unselectedItemColor: ColorCodes.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
