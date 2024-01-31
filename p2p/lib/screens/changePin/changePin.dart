import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p2p/screens/bottomNavBar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class setNewPin extends StatefulWidget {
  const setNewPin({super.key});

  @override
  State<setNewPin> createState() => _setNewPinState();
}

class _setNewPinState extends State<setNewPin> {
  bool secureTextA = true;
  bool secureTextB = true;
  @override
  Widget build(BuildContext context) {
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
                  ' set new pin ',
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Enter new pin ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.07,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  secureTextA = !secureTextA;
                                });
                              },
                              icon: Icon(secureTextA
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: PinCodeTextField(
                        obscureText: secureTextA,
                        obscuringCharacter: '*', // Custom obscuring character
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        appContext: context,
                        // controller: controller,
                        length: 6,
                        cursorHeight: 19,
                        enableActiveFill: true,
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          fieldWidth: 50,
                          inactiveColor: Colors.grey,
                          selectedColor: Colors.lightBlue,
                          activeFillColor: Colors.blue,
                          selectedFillColor: Colors.blue,
                          inactiveFillColor: Colors.grey.shade100,
                          borderWidth: 1,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' confirm new pin ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.07,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  secureTextB = !secureTextB;
                                });
                              },
                              icon: Icon(secureTextB
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: PinCodeTextField(
                        obscureText: secureTextB,
                        obscuringCharacter: '*', // Custom obscuring character
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        appContext: context,
                        // controller: controller,
                        length: 6,
                        cursorHeight: 19,
                        enableActiveFill: true,
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          fieldWidth: 50,
                          inactiveColor: Colors.grey,
                          selectedColor: Colors.lightBlue,
                          activeFillColor: Colors.blue,
                          selectedFillColor: Colors.blue,
                          inactiveFillColor: Colors.grey.shade100,
                          borderWidth: 1,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => navBar()));
                },
                child: Text("DONE",
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
                  //elevation: 10,
                  //  minimumSize: Size(100, 50)
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
