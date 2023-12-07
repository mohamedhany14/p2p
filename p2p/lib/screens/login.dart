import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p2p/screens/signUp.dart';

class login extends StatelessWidget {
  login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        //   height: height,
        //   width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height / 7,
            ),
            Text(
              "Welcome Back ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2f1155),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
              "to ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff2f1155),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
                  Text(
                  "Smart Pay",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff5164bf),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                              ),
                ],
              ),
            SizedBox(height: height / 5),
            //phone number field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "inter phone  number ";
                  } else if (value.length < 11) {
                    return "phone number must be 11 digits";
                  } else if (!RegExp(r'^[a-zA-Z0-9!@#$%^&*(),.?":{}|<> ]+$')
                      .hasMatch(value)) {
                    return 'password contains invalid characters';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mobile_friendly_rounded),

                  labelText: "Phine number",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5063bf)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            //password field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
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
                  suffixIcon: Icon(Icons.visibility),
                  labelText: "Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5063bf)),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("NEW?",
                      style: TextStyle(
                        color: Color(0xff2f1155),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => signUp(),
                        ),
                      );
                    },
                    child: Text("Register Now.",
                        style: TextStyle(
                          color: Color(0xff5063bf),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 6,
            ),

            //login button
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => signUp(),
                  ),
                );
              },
              child: Text("Login",
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
          ],
        ),
      ),
    );
  }
}
