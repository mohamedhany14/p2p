import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/GasBills/gasBillSummary.dart';
import 'package:p2p/screens/bottomNavBar.dart';
import 'package:p2p/screens/home.dart';

class oldGasBills extends StatefulWidget {
  const oldGasBills({super.key});

  @override
  State<oldGasBills> createState() => _oldGasBillsState();
}

class _oldGasBillsState extends State<oldGasBills> {
  var selectedMonth;
  List<String> Months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      // color: Colors.blueGrey[200],
                    ),
                    child: DropdownButton<String>(
                      isDense: false,
                      borderRadius: BorderRadius.circular(20),
                      hint: const Text("select month"),
                      isExpanded: true,
                      value: selectedMonth, // Track the selected month
                      items: Months.map((month) {
                        return DropdownMenuItem<String>(
                          value: month,
                          child: Text(month),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedMonth = newValue;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
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

                      labelText: "counter number",

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

                      labelText: "subscriber number",

                      prefixIcon: Icon(Icons.access_alarm_sharp),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => gasBillSummary()));
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
