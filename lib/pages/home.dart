import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/Exercise.dart';
import 'package:universal_fitness/pages/Pedometer.dart';
import 'package:universal_fitness/pages/Strength.dart';
import 'package:universal_fitness/pages/Trainer.dart';
import 'package:universal_fitness/pages/Utility.dart';
import 'package:universal_fitness/pages/bmi/BmiInput.dart';
import 'package:universal_fitness/pages/bmi/BmrInput.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  // int selectedIndex = 0;
  // final _pageOption = [HomePage(), Exercise(), DailyStepsPage(), Cardio()];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff102B46),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Universal Physical Fitness', style: TextStyle(fontFamily: 'Pacifico', fontSize: 20, letterSpacing: 1),),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                    const SnackBar(content: Text('This is a snackbar'));
              },
            ),
          ],
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff102B46),
              ),
              child: Text(
                'Welcome Member',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // DrawerHeader(
            //     decoration: BoxDecoration(
            //         color: Color(0xff102B46),
            //       ),
            //   child: Column(
            //     children: [
            //       CircleAvatar(
            //         radius: 60.0,
            //         backgroundColor: const Color(0xFF778899),
            //         backgroundImage: NetworkImage("https://www.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg"),
            //       ),
            //       Text("Chutia banaya"),
            //     ],
            //   ),
            // ),

            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
        body:
        SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // _pageOption[selectedIndex],
                  SizedBox(
                    width: double.infinity,
                    height: 10,
                  ),
                  Text('Welcome Member',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      letterSpacing: 1
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Exercise()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage("images/exercise.png")),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffc6c6c6),
                                blurRadius: 4,
                                offset: Offset(4,8),
                              ),
                            ]
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Diet()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage("images/diet.png")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc6c6c6),
                                  blurRadius: 4,
                                  offset: Offset(4,8),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cardio()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage("images/cardio.png")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc6c6c6),
                                  blurRadius: 4,
                                  offset: Offset(4,8),
                                ),
                              ]
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Strength()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage("images/strengths.png")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc6c6c6),
                                  blurRadius: 4,
                                  offset: Offset(4,8),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Utility()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage("images/utility.png")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc6c6c6),
                                  blurRadius: 4,
                                  offset: Offset(4,8),
                                ),
                              ]
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Trainer()),
                          );
                        },
                        child: Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover, image: AssetImage("images/trainer.png")),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc6c6c6),
                                  blurRadius: 4,
                                  offset: Offset(4,8),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
        ),
      bottomNavigationBar: ConvexAppBar(

        backgroundColor: Color(0xff102B46),
        items: [
          TabItem(icon: Icons.home, title: "Home"),
          TabItem(icon: Icons.article, title: "Blog"),
          TabItem(icon: Icons.alarm_add, title: "Gym Time"),
          TabItem(icon: Icons.settings, title: "Settings"),
        ],
        initialActiveIndex: 0,
      ),

      );
  }
}
