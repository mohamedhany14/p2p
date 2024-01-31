import 'package:flutter/material.dart';
import 'package:p2p/screens/bottomNavBar.dart';
import 'package:p2p/widgets/defoultCard.dart';

class checkBalance extends StatelessWidget {
  const checkBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            defoultCard(),
            SizedBox(
              height: 120,
            ),
            Text(
              'Available Balance',
              style: TextStyle(
                color: Color(0xFF878787),
                fontSize: 18,
                fontFamily: 'Actor',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.05,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '\$2,85,856.20',
              style: TextStyle(
                color: Color(0xFF5163BF),
                fontSize: 35,
                fontFamily: 'Aclonica',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.11,
              ),
            ),
            SizedBox(
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => navBar()));
              },
              child: Text("Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  )),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xff5063bf),
                  //elevation: 10,
                  minimumSize: Size(140, 50)),
            ),
          ],
        ),
      )),
    );
  }
}
