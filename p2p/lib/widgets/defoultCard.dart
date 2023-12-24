import 'package:flutter/material.dart';
import 'package:p2p/screens/balance.dart';

class defoultCard extends StatelessWidget {
  const defoultCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: 340,
        height: 80,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFF5163BF)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 60,
                width: 60,
                child: Image.asset("assets/images/Mastercard-logo.svg.png")),
            // SizedBox(
            //   width: 10,
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(height: 10,),
                Text(
                  'EXAMPLE@SMARTPAY',
                  style: TextStyle(
                    color: Color(0xFF1E1E1E),
                    fontSize: 12,
                    fontFamily: 'Actor',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.04,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BANK NAME',
                      style: TextStyle(
                        color: Color(0xFF878787),
                        fontSize: 12,
                        fontFamily: 'Actor',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.04,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '6253',
                      style: TextStyle(
                        color: Color(0xFF878787),
                        fontSize: 13,
                        fontFamily: 'Abel',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),

            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const balance(),
              )),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Default',
                      style: TextStyle(
                        color: Color(0xFF5163BF),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.05,
                      ),
                    ),
                    Text(
                      'Card',
                      style: TextStyle(
                        color: Color(0xFF5163BF),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.05,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
