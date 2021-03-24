import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/Exercise.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

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
          title: const Text('Home'),
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
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Welcome Member',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20,
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
                                builder: (context) => Exercise()),
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
                                builder: (context) => Diet()),
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
                                builder: (context) => Exercise()),
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
                                builder: (context) => Diet()),
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