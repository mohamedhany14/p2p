import 'package:flutter/material.dart';
import 'package:p2p/widgets/defoultCard.dart';

class pillBayment extends StatelessWidget {
  pillBayment({super.key});

  final List<Map<String, dynamic>> dataList = [
    {'text': ' Electricity ', 'imageUrl': 'assets/images/lightning.png'},
    {'text': ' TV & Internet ', 'imageUrl': 'assets/images/wifi.png'},
    {'text': ' Mobile & Data ', 'imageUrl': 'assets/images/phone_iphone.png'},
    {'text': ' Gas Bills ', 'imageUrl': 'assets/images/Pressure.png'},
    {'text': ' Water Bills ', 'imageUrl': 'assets/images/Group 1 (5) 1.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
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
                    'Bill Payment',
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
                height: 60,
              ),
              defoultCard(),
              SizedBox(
                height: 60,
              ),
              Container(
                height: height * 1.5 / 3,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                  ),
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 91.0,
                        height: 109.0,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF8F9FA),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.06, color: Color(0xFFEFF1F4)),
                            borderRadius: BorderRadius.circular(14.89),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x423A7BF8),
                              blurRadius: 40,
                              offset: Offset(0, 10),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              dataList[index]['imageUrl'],
                            ),
                            Text(
                              dataList[index]['text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3177FF),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
