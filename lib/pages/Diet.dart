import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/BodyBuildingDiet.dart';
import 'package:universal_fitness/pages/Gain.dart';
import 'package:universal_fitness/pages/NaturalDiet.dart';
import 'package:universal_fitness/pages/ProteinDiet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';
import 'package:universal_fitness/pages/weightLoss.dart';


class Diet extends StatefulWidget {

  @override
  _Diet createState() => _Diet();
}

class _Diet extends State<Diet> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff102B46),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_rounded),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                ); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Diet Plans'),
          actions: <Widget>[
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WeeklyDiet()),
                        );
                      },
                      child: Container(
                        height: 180,
                        width: 380,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("images/dietPlans.png")),
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
                              builder: (context) => Gain()),
                        );
                      },
                      child: Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage("images/gain.png")),
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
                              builder: (context) => WeightLoss()),
                        );
                      },
                      child: Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage("images/loss.png")),
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
                              builder: (context) => ProteinDiet()),
                        );
                      },
                      child: Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage("images/protein.png")),
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
                              builder: (context) => NaturalDiet()),
                        );
                      },
                      child: Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage("images/food.png")),
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
      );
  }
}
