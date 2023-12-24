import 'package:flutter/material.dart';
import 'package:p2p/screens/balance.dart';
import 'package:p2p/screens/billPayment.dart';
import 'package:p2p/screens/manageCards.dart';
import 'package:p2p/screens/service.dart';
import 'package:p2p/widgets/cards.dart';
import 'package:p2p/widgets/drawer.dart';

class home extends StatelessWidget {
  home({super.key});

  final List<Map<String, dynamic>> dataList = [
    {
      'text': 'Send Money ',
      'imageUrl': 'assets/images/noun_send_3612583 1.png'
    },
    {
      'text': 'Receive Money ',
      'imageUrl': 'assets/images/noun_send_3612583 1 (1).png'
    },
    //{'text': ' Check Balance', 'imageUrl': 'assets/images/Bank Card.png'},
    {'text': ' Bill Payment', 'imageUrl': 'assets/images/Vector.png'},
    {
      'text': ' Transactions',
      'imageUrl': 'assets/images/Horizontal_switch_light.png'
    },
    {'text': ' Cryptocurrency', 'imageUrl': 'assets/images/Cypto.png'},
    {'text': ' Donations', 'imageUrl': 'assets/images/donate.png'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(),
        drawer: navDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Good Afternoon',
                style: TextStyle(
                  color: Color(0xFF878787),
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.05,
                ),
              ),
              Text(
                'Mohamed hany',
                style: TextStyle(
                  color: Color(0xFF5163BF),
                  fontSize: 28,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.08,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Accounts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.05,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => manageCards()),
                      );
                    },
                    child: Text(
                      'Mange',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF5163BF),
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.05,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                width: width,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return containerCards();
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Service',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.05,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => service()),
                      );
                    },
                    child: Text(
                      'More >',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF5163BF),
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.05,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
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
                        if (index == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pillBayment()));
                        }
                        //   } else {
                        //     Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                        //   }
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
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Last Transactions',
                    style: TextStyle(
                      color: Color(0xFF878787),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                      letterSpacing: 0.05,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => balance(),
                        ),
                      );
                    },
                    child: Text(
                      'See All  >',
                      style: TextStyle(
                        color: Color(0xFF5163BF),
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.05,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
