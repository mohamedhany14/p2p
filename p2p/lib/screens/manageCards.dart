import 'package:flutter/material.dart';
import 'package:p2p/screens/billPayment.dart';
import 'package:p2p/screens/checkBalance.dart';
import 'package:p2p/widgets/defoultCard.dart';
import 'package:p2p/widgets/setDefoultCard.dart';

class manageCards extends StatelessWidget {
  manageCards({super.key});

  final List<Map<String, dynamic>> dataList = [
    {'text': 'Add Card ', 'imageUrl': 'assets/images/Icon Plus.png'},
    {'text': 'Delete Account', 'imageUrl': 'assets/images/Archive.png'},
    {'text': ' Check Balance', 'imageUrl': 'assets/images/Bank Card.png'},
    {'text': 'Change Password', 'imageUrl': 'assets/images/Download.png'},
    {'text': ' Forget Password', 'imageUrl': 'assets/images/Pen.png'},
    {
      'text': 'Transactions ',
      'imageUrl': 'assets/images/Horizontal_switch_light.png'
    },
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
                    'Mange Cards ',
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
                height: 40,
              ),
              defoultCard(),
              SizedBox(
                height: 40,
              ),
              Container(
                height: height * 0.9 / 3,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns
                  ),
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pillBayment()));
                        }
                          else {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => checkBalance()));
                          }
                      },
                      child: Padding(
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
                      ),
                    );
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Other Accounts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF878787),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.05,
                  ),
                ),
                Container(),
              ]),
              SizedBox(
                height: 300,
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return setDefoultCard();
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
