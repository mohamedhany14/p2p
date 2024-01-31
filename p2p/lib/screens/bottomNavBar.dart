import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/barcode.dart';
import 'package:p2p/screens/home.dart';
import 'package:p2p/screens/manageCards.dart';
import 'package:p2p/screens/recieve.dart';
import 'package:p2p/screens/send/send.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  List screens = [home(), TabBarPage(), barcode(), recieve(), manageCards()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        height: 60,
        color: kColor1,
        backgroundColor: Colors.white,
        index: _selectedIndex,
        items: const [
          Icon(
            Icons.home,
            size: 30,
          ),
          ImageIcon(
            AssetImage('assets/images/noun_send_3612583 1.png'),
            size: 30,
          ),
          ImageIcon(
            AssetImage('assets/images/Scan.png'),
            size: 30,
          ),
          ImageIcon(
            AssetImage('assets/images/noun_send_3612583 1 (1).png'),
            size: 30,
          ),
          ImageIcon(
            AssetImage('assets/images/tabler_credit-card.png'),
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: screens[_selectedIndex],
    );
  }
}
