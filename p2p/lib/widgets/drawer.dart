import 'package:flutter/material.dart';
import 'package:p2p/screens/bottomNavBar.dart';
import 'package:p2p/screens/home.dart';
import 'package:p2p/screens/service.dart';

class navDrawer extends StatelessWidget {
  const navDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              // buildMenuItems(context),

              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        //color: Colors.blue,

        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),

        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'William Smith',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 24,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
                height: 0.07,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'william.smith@gmail.com',
              style: TextStyle(
                color: Color(0xFF827F7F),
                fontSize: 13,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                height: 0.25,
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Home"),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => navBar(),
              )),
            ),
            ListTile(
              leading: Icon(Icons.payment_outlined),
              title: Text("My wallet"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.loop),
              title: Text("Transaction"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.grid_view_rounded),
              title: Text("Service"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => service()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Help"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_center_rounded),
              title: Text("FAQ"),
              onTap: () {},
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => navBar(),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text("Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Color(0xff5063bf),
                  //elevation: 10,
                  minimumSize: Size(100, 50)),
            ),
          ],
        ),
      );
}
