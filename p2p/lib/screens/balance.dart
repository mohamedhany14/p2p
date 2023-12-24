import 'package:flutter/material.dart';
import 'package:p2p/screens/home.dart';

class balance extends StatelessWidget {
  const balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Text("data"),
      
      SizedBox(height: 100,),

GestureDetector(
    onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => home(),
                          ),
                        );
                      },
  child: Container(
    height: 100,width: 100,
    color: Colors.green,
    child: Text("data"),),
),


   
   
   
   
   
      ]),
    );
  }
}





