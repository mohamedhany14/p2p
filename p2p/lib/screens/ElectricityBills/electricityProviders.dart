import 'package:flutter/material.dart';
import 'package:p2p/screens/ElectricityBills/ElectricityBills.dart';

class electricityProvider extends StatelessWidget {
  electricityProvider({super.key});
  final List<Map<String, dynamic>> dataList = [
    {'text': ' Town Gas ', 'imageUrl': 'assets/images/towngas_logo.png'},
    {
      'text': ' TAQA Gas Company ',
      'imageUrl': 'assets/images/taqa_arabia_logo.jpeg'
    },
    {
      'text': 'Egypt Gas Company ',
      'imageUrl': 'assets/images/Egypt_Gas_logo.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ' Electricity bills ',
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
              Column(
                children: [
                  Text(
                    ' Choose you gas provider ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.07,
                    ),
                  ),
                  SizedBox(
                    height: height * 2 / 3,
                    child: ListView.builder(
                      // scrollDirection: Axis.vertical,

                      itemCount: dataList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          electricitybills()));
                            } else if (index == 3) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          electricitybills()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const electricitybills()));
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 30,
                              height: 325,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF8F9FA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1.06, color: Color(0xFFEFF1F4)),
                                  borderRadius: BorderRadius.circular(20.89),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x423A7BF8),
                                    blurRadius: 40,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    dataList[index]['imageUrl'],
                                  ),
                                  Text(
                                    dataList[index]['text'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
