//import 'dart:js';

import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

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
            //email field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),

                  labelText: "Email",
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
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Date",
                  // filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff5063bf)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                readOnly: true,
                //    onTap: () {},
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
            //signup button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => signUp(),
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
}
