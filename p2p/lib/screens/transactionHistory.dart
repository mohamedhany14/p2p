import 'package:flutter/material.dart';
import 'package:p2p/widgets/lastTransactions.dart';

class transaction extends StatelessWidget {
  const transaction({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '   History ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.07,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 2.272 / 3 * height,
              width: width,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return transactionContainer();
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
