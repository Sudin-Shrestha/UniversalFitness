import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';


class ProteinDiet extends StatefulWidget {

  @override
  _ProteinDiet createState() => _ProteinDiet();
}

class _ProteinDiet extends State<ProteinDiet> {

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
                    builder: (context) => Diet()),
              ); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Supplement Diet'),
        actions: <Widget>[
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Text('Weight Lose with protein',
                style: TextStyle(
                  color: Color(0xffF1C40E),
                  fontFamily: 'Pacifico',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("6:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("2 Scoop Oat Meal in water \n1 Cup of Coffee with no sugar", style: TextStyle(fontSize: 17),),
              ),
              //Meal 1 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Workout Time", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("45 minutes Workout \n45 minutes cardio \nTake BCCA Glutamine during workout", style: TextStyle(fontSize: 17),),
              ),
              //Meal 2 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("10:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Boiled Vegtables (Broccoli 50gm + Beans 50gm + some tomatoes + Green beans(simi) \n*If fry use 1tsp Olive oil", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 3
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("11:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("1 Scoop 100% Whey protein", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 4
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("12:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("3 Spoon chia seeds", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 5
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("4:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("50gm boiled rice \n100gm tofu \n50gm Asparagus + Black Beans", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 6
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("8:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Boiled Vegtables (Broccoli 50gm + Beans 50gm + some tomatoes + Green beans(simi) \n*If fry use 1tsp Olive oil", style: TextStyle(fontSize: 17),),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("*1 Scoop 100% Whey protein before bed", style: TextStyle(fontSize: 15),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("*You can also have chicken breast in place of tofu", style: TextStyle(fontSize: 15),),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
