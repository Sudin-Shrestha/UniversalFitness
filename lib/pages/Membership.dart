import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/main.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/Exercise.dart';
import 'package:universal_fitness/pages/StopWatch.dart';
import 'package:universal_fitness/pages/bmi/BmiInput.dart';
import 'package:universal_fitness/pages/bmi/BmrInput.dart';
import 'package:universal_fitness/pages/home.dart';


class Membership extends StatefulWidget {

  @override
  _Membership createState() => _Membership();
}

class _Membership extends State<Membership> {

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
        title: const Text('Membership Details'),
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
              Text("Membership from: ", style: TextStyle(fontSize: 25),),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Text("Membership To: ", style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),

    );
  }
}
