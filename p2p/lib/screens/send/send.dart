import 'package:flutter/material.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/home.dart';
import 'package:p2p/screens/send/mobileNumber.dart';
import 'package:p2p/screens/send/paymentAdress.dart';
import 'package:p2p/widgets/defoultCard.dart';
import 'package:p2p/widgets/drawer.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            'Send Money',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.07,
            ),
          ),
          centerTitle: true),
      drawer: navDrawer(),
      body: Column(
        children: [
          Container(
            height: 630,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    defoultCard(),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: kColor1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TabBar(
                                    unselectedLabelColor: Colors.black,
                                    labelColor: Colors.white,
                                    // indicatorColor: kColor1,
                                    // //indicatorWeight: 10,
                                    // indicatorPadding: EdgeInsets.all(2),
                                    controller: tabController,
                                    tabs: [
                                      Tab(
                                        text: 'Tab 1',
                                      ),
                                      Tab(
                                        text: 'Tab 2',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: tabController,
                              children: [
                                Tab1(),
                                Tab2(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => home(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 50,
                ),
                Text("Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Color(0xff5063bf),
                //elevation: 10,
                minimumSize: Size(100, 50)),
          ),
        ],
      ),
    );
  }
}
