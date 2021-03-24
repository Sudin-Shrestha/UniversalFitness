import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';


class WeightLoss extends StatefulWidget {

  @override
  _WeightLoss createState() => _WeightLoss();
}

class _WeightLoss extends State<WeightLoss> {

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
        title: const Text('Loss'),
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
              Text('Weight Lose Diet Plan',
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
                child: Text("2 Scoop Oat Meal + 1 Cup Milk \n6 Egg Whites \n1 Cup of Coffee with no sugar", style: TextStyle(fontSize: 17),),
              ),
              //Meal 1 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("7:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Workout 1 hour \nCardio 45 minutes", style: TextStyle(fontSize: 17),),
              ),
              //Meal 2 End
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
                child: Text("1 Bowl white rice \n300gm Chicken brest\nGreen Vegetable(Spinich + beat root)", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 3
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("3:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("6 Egg white + fruit (Watermelon recommended)", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 4
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("5:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("1 Bowl white rice \n300gm Chicken brest\nGreen Vegetable", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 5
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("7:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Workout 1 hour \nCardio 45 minutes", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 6
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("9:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Buff or Fish 300gm \nGreen Vegetables + Salad", style: TextStyle(fontSize: 17),),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("*You can change chicken breast with Tofu or Beans and Sprouts", style: TextStyle(fontSize: 15),),
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
