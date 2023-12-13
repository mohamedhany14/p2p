//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/otp.dart';
import 'package:p2p/screens/phoneVarification.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController _dateController = TextEditingController();
  bool secureTextA = true;
  bool secureTextB = true;
  var selectedCity;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height / 7,
            ),
            Text(
              "Immediately Feel\nThe Ease of Transacting\n Just by Registering",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2f1155),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: height / 10),
            //user name text field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),

                  labelText: "Full Name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kColor1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            //email field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),

                  labelText: "Email",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kColor1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            //birth date field
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: "Birth Date",
                  // filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kColor1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate();
                },
              ),
            ),
//chose the user gender
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        "male",
                        style: TextStyle(
                          color: Color(0xff2f1155),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        "female",
                        style: TextStyle(
                          color: Color(0xff2f1155),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),

//chose city field
            Padding(
              padding: const EdgeInsets.all(9),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: DropdownButton(
                  isExpanded: true,
                  hint: Text("select your city"),
                  items: ["cairo", "ismailia", "alex"]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selectedCity = val!;
                    });
                  },
                  value: selectedCity,
                ),
              ),
            ),
            //password field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: secureTextA,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password is empty";
                  } else if (value.length < 10) {
                    return "password is too short";
                  } else if (!RegExp(r'^[a-zA-Z0-9!@#$%^&*(),.?":{}|<> ]+$')
                      .hasMatch(value)) {
                    return 'password contains invalid characters';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_sharp),
                  // suffixIcon: Icon(Icons.visibility),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secureTextA = !secureTextA;
                        });
                      },
                      icon: Icon(secureTextA
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  labelText: "Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kColor1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: secureTextB,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key_sharp),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          secureTextB = !secureTextB;
                        });
                      },
                      icon: Icon(secureTextB
                          ? Icons.visibility_off
                          : Icons.visibility)),

                  labelText: "Confirm Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: kColor1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            //registr-signup route by text register now
            //signup button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Register(),
                    ),
                  );
                },
                child: Text("Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xff5063bf),
                    //elevation: 10,
                    minimumSize: Size(140, 50)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //show date picker method
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime.now());
    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
