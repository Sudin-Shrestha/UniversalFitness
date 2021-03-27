import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/BodyBuildingDiet.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';


class Friday extends StatefulWidget {

  @override
  _Friday createState() => _Friday();
}

class _Friday extends State<Friday> {

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
                    builder: (context) => WeeklyDiet()),
              ); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Friday Plan'),
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
              Text('Friday',
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
                child: Text("Breakfast", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("3 whole eggs, \n2 egg whites (scrambled),\n2 scoop oats + 1tsp honet + 300ml milk, \n1 banana", style: TextStyle(fontSize: 17),),
              ),
              //Meal 1 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Snack", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("1 cup berreis (strawberries, blueberries) \n2 cup low-fat cottage cheese", style: TextStyle(fontSize: 17),),
              ),
              //Meal 2 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Lunch", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("2 Bowl white rice \n250gm Chicken\nGreen Vegetable + Salad + Curd", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 3
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Dinner", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("200gm Fish or Red meat, \n2 cups couscous, \n2 cups spinich, \n1tsp balsamic dressing", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 4
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Supper", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("1 cup low-fat greek youghurt, \n1tsp flaxseeds", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 5
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
