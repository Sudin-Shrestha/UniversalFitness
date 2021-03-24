import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';


class Gain extends StatefulWidget {

  @override
  _Gain createState() => _Gain();
}

class _Gain extends State<Gain> {

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
        title: const Text('Gain'),
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
              Text('Weight Gain Diet Plan',
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
                child: Text("2 Scoop Oat Meal + 1 Cup Milk \n4 Egg Whites + 2 Yellow\nCup of Coffee", style: TextStyle(fontSize: 17),),
              ),
              //Meal 1 End
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("9:00 AM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("4 Slice of Bread with Peanut Butter \n1 Bowl Grain(Chana)\n1/2 Avacado", style: TextStyle(fontSize: 17),),
              ),
              //Meal 2 End
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
                child: Text("2:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("Fruits (1 Apple + 1 Orange + 4 piece Banana)", style: TextStyle(fontSize: 17),),
              ),
              //End of Meal 4
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
                child: Text("White rice or any source of carbs(bread, oats) \n250gm fish", style: TextStyle(fontSize: 17),),
              ),
              //End of meal 5
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("6:00 PM", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("4 Egg whits + 2 yellow \n4 SLice bread with peanut butter", style: TextStyle(fontSize: 17),),
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
                child: Text("2 Bowl white rice \n250gm Red meat(buff)\nVegetable + Salad + Curd", style: TextStyle(fontSize: 17),),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("*If you consume protein you can have after workout", style: TextStyle(fontSize: 17),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 30),
                child: Text("*You can change chicken breast with Tofu or Beans and Sprouts", style: TextStyle(fontSize: 17),),
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
