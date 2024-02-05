import 'package:flutter/material.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/WaterBills/newWaterBills.dart';
import 'package:p2p/screens/WaterBills/oldWaterBills.dart';

class WaterBills extends StatefulWidget {
  const WaterBills({Key? key}) : super(key: key);

  @override
  _WaterBillsState createState() => _WaterBillsState();
}

class _WaterBillsState extends State<WaterBills>
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                      ' Water bills ',
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
                Container(
                  height: 745,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 720,
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
                                        //indicatorWeight: 10,
                                        // indicatorPadding: EdgeInsets.all(10),
                                        controller: tabController,
                                        tabs: [
                                          Tab(
                                            text: 'old',
                                          ),
                                          Tab(
                                            text: 'new',
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
                                    oldWaterBills(),
                                    newWaterBills(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
