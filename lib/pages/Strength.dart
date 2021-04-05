import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/Exercise.dart';
import 'package:universal_fitness/pages/Strength/Beginner.dart';
import 'package:universal_fitness/pages/bmi/BmiInput.dart';
import 'package:universal_fitness/pages/bmi/BmrInput.dart';
import 'package:universal_fitness/pages/home.dart';


class Strength extends StatefulWidget {

  @override
  _Strength createState() => _Strength();
}

class _Strength extends State<Strength> {

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
              onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Strength'),
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
                            builder: (context) => Beginner()),
                      );
                    },
                    child: Container(
                      height: 180,
                      width: 380,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("images/beginner.png")),
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
                height: 30,
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
                            builder: (context) => Beginner()),
                      );
                    },
                    child: Container(
                      height: 180,
                      width: 380,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("images/intermidate.png")),
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
                height: 30,
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
                            builder: (context) => Beginner()),
                      );
                    },
                    child: Container(
                      height: 180,
                      width: 380,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage("images/pro.png")),
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
