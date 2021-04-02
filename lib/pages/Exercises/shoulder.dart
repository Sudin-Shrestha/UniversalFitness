import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Shoulder extends StatefulWidget {

  @override
  _Shoulder createState() => _Shoulder();
}

class _Shoulder extends State<Shoulder> {

  var pngImage = [
    "images/shoulder/shoulderPng/t_arnold_presses.png",
    "images/shoulder/shoulderPng/t_barbell_front_raises.png",
    "images/shoulder/shoulderPng/t_barbell_shrugs.png",
    "images/shoulder/shoulderPng/t_barbell_upright_rows.png",
    "images/shoulder/shoulderPng/t_bent_over_lateral_raises.png",
    "images/shoulder/shoulderPng/t_dumbbell_front_raises.png",
    "images/shoulder/shoulderPng/t_dumbbell_shrugs.png",
    "images/shoulder/shoulderPng/t_face_pulls.png",
    "images/shoulder/shoulderPng/t_overhead_press.png",
    "images/shoulder/shoulderPng/t_seated_barbell_front_presses.png",
    "images/shoulder/shoulderPng/t_seated_cable_lateral_raises.png",
    "images/shoulder/shoulderPng/t_seated_machine_presses.png",
    "images/shoulder/shoulderPng/t_smith_machine_shrugs.png",

  ];

  var gifImage = [
    "images/shoulder/arnold_presses.gif",
    "images/shoulder/barbell_front_raises.gif",
    "images/shoulder/barbell_shrugs.gif",
    "images/shoulder/barbell_upright_rows.gif",
    "images/shoulder/bent_over_lateral_raises.gif",
    "images/shoulder/dumbbell_front_raises.gif",
    "images/shoulder/dumbbell_shrugs.gif",
    "images/shoulder/face_pulls.gif",
    "images/shoulder/overhead_press.gif",
    "images/shoulder/seated_barbell_front_presses.gif",
    "images/shoulder/seated_cable_lateral_raises.gif",
    "images/shoulder/seated_machine_presses.gif",
    "images/shoulder/smith_machine_shrugs.gif",
  ];

  var exerciseName = [
    "Arnold Press",
    "Barbell Front Raises",
    "Barbell Shrugs",
    "Barbell Upright Rows",
    "Bent Over Raise",
    "Dumbbell Front Raises",
    "Dumbbell Shrugs",
    "Face Pulls",
    "Overhead Press",
    "Seated Barbell Press",
    "Seated Cable Raise",
    "Seated Machine Press",
    "Smith Machine Shrugs",
  ];

  var exerciseType = [
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Anterior",
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Lateral Deltoid",
    "Trapezius muscles",
    "Posterior Deltoid",
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Posterior Deltoid",
    "Lateral Deltoid",
    "Anterior",

  ];

  var descList = [
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Anterior",
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Lateral Deltoid",
    "Trapezius muscles",
    "Posterior Deltoid",
    "Lateral Deltoid",
    "Anterior Deltoid",
    "Posterior Deltoid",
    "Lateral Deltoid",
    "Anterior",
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
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
                    builder: (context) => Exercise()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Shoulder'),
        actions: <Widget>[
        ],
      ),
      body: ListView.builder(
          itemCount: exerciseName.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                // This Will Call When User Click On ListView Item
                showDialogFunc(context, gifImage[index], exerciseName[index], descList[index]);

              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(pngImage[index]),
                    ),
                    Padding(padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            exerciseName[index],
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(exerciseType[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[500],

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),

    );
  }
}


// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
