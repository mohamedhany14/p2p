
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p2p/constants.dart';
import 'package:p2p/screens/bottomNavBar.dart';

class addCard extends StatefulWidget {
  const addCard({super.key});

  @override
  State<addCard> createState() => _addCardState();
}

class _addCardState extends State<addCard> {
  var selectedBank;

  bool secureTextA = true;
  bool secureTextB = true;
  bool securePinA = true;
  List<String> banks = [
    'National Bank of Egypt (NBE)',
    'Banque Misr (BM)',
    'Commercial International Bank (CIB)',
    'Arab African International Bank (AAIB)',
    'QNB Alahli'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'Add Cards ',
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueGrey[200],
                  ),
                  child: DropdownButton<String>(
                    isDense: false,
                    borderRadius: BorderRadius.circular(20),
                    hint: const Text("select your bank"),
                    isExpanded: true,
                    value: selectedBank, // Track the selected city
                    items: banks.map((bank) {
                      return DropdownMenuItem<String>(
                        value: bank,
                        child: Text(bank),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedBank = newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(16),
                    CardNumberInputFormatter(),
                  ],
                  decoration: const InputDecoration(
                    labelText: "Card number",
                    prefixIcon: ImageIcon(
                      AssetImage('assets/images/Bank Card.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "full name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,

                        // limit the input
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3),
                        ],
                        decoration: const InputDecoration(
                          labelText: "cvv",
                          prefixIcon: ImageIcon(
                            AssetImage('assets/images/cvv.png'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,

                        // limit the input
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                          CardMonthInputFormatter(),
                        ],
                        decoration: const InputDecoration(
                            labelText: "MM/YY",
                            prefixIcon: Icon(Icons.calendar_today_outlined)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: securePinA,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_sharp),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              securePinA = !securePinA;
                            },
                          );
                        },
                        icon: Icon(securePinA
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    labelText: "card pin ",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: TextEditingController(text: '@samrt pay'),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),

                      labelText: "Email",
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: kColor1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
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
                      prefixIcon: const Icon(Icons.vpn_key_sharp),
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
                        borderSide: const BorderSide(width: 2, color: kColor1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                      prefixIcon: const Icon(Icons.vpn_key_sharp),
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
                        borderSide: const BorderSide(width: 2, color: kColor1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const navBar(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: const Color(0xff5063bf),
                      //elevation: 10,
                      //  minimumSize: Size(100, 50)
                    ),
                    child: const Text(
                      "DONE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
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

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;
      if (index % 4 == 0 && inputData.length != index) {
        buffer.write("  ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
        offset: buffer.toString().length,
      ),
    );
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
