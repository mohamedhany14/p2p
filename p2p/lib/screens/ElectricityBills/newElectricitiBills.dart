import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/ElectricityBills/ElectricitiBillsSummary.dart';
import 'package:p2p/screens/bottomNavBar.dart';

class newElectricityBills extends StatelessWidget {
  const newElectricityBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                    ],
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: kColor1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      labelText: "Card number",

                      prefixIcon: Icon(Icons.access_alarm_sharp),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                    ],
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: kColor1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      labelText: "Enter amount to pay",

                      prefixIcon: Icon(Icons.access_alarm_sharp),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => electricitySummary()));
                },
                child: Text("confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: Color(0xff5063bf),
                    minimumSize: Size(200, 60)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
