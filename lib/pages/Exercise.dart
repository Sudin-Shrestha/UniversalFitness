import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Exercises/Back.dart';
import 'package:universal_fitness/pages/Exercises/Biseps.dart';
import 'package:universal_fitness/pages/Exercises/Chest.dart';
import 'package:universal_fitness/pages/Exercises/Leg.dart';
import 'package:universal_fitness/pages/Exercises/Tricep.dart';
import 'package:universal_fitness/pages/Exercises/shoulder.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';

class Exercise extends StatefulWidget {

  @override
  _Exercise createState() => _Exercise();
}

class _Exercise extends State<Exercise> {

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
                ); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Exercise'),
          actions: <Widget>[
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chest()),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: new Image(image: AssetImage("images/chest.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Back()),
                    );
                  },
                  child: Container(
                    height: 200,

                    width: double.infinity,
                    child: new Image(image: AssetImage("images/back.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Biseps()),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: new Image(image: AssetImage("images/biseps.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Shoulder()),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: new Image(image: AssetImage("images/shoulder.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Tricep()),
                    );
                  },
                  child: Container(
                    height: 200,

                    width: double.infinity,
                    child: new Image(image: AssetImage("images/traps.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Leg()),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: new Image(image: AssetImage("images/leg.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
