import 'package:flutter/material.dart';

class ContainerRadioButtons extends StatefulWidget {
  @override
  _ContainerRadioButtonsState createState() => _ContainerRadioButtonsState();
}

class _ContainerRadioButtonsState extends State<ContainerRadioButtons> {
   int _selectedValue=0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: 1,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
        Container(
          decoration: BoxDecoration(
             color: _selectedValue == 1 ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(15)
          ),
          width: 100,
          height: 50,
         
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
        ),
        SizedBox(height: 20),
        Radio(
          value: 2,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: _selectedValue == 2 ? Colors.pinkAccent : Colors.grey,),
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
        ),
      ],
    );
  }
}