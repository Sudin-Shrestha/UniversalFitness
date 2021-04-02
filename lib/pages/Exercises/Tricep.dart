import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Tricep extends StatefulWidget {

  @override
  _Tricep createState() => _Tricep();
}

class _Tricep extends State<Tricep> {

  var pngImage = [
    "images/tricep/tricepPng/t_barbell_tricep_extensions.png",
    "images/tricep/tricepPng/t_cable_tricep_extensions.png",
    "images/tricep/tricepPng/t_cable_tricep_push_downs.png",
    "images/tricep/tricepPng/t_diamond_push_ups.png",
    "images/tricep/tricepPng/t_dumbbell_tricep_extensions.png",
    "images/tricep/tricepPng/t_one_arm_dumbbell_extensions.png",
    "images/tricep/tricepPng/t_reverse_push_downs.png",
    "images/tricep/tricepPng/t_tricep_bench_dips.png",
    "images/tricep/tricepPng/t_tricep_dips.png",
    "images/tricep/tricepPng/t_tricep_push_downs.png",

  ];

  var gifImage = [
    "images/tricep/barbell_tricep_extensions.gif",
    "images/tricep/cable_tricep_extensions.gif",
    "images/tricep/cable_tricep_push_downs.gif",
    "images/tricep/diamond_push_ups.gif",
    "images/tricep/dumbbell_tricep_extensions.gif",
    "images/tricep/one_arm_dumbbell_extensions.gif",
    "images/tricep/reverse_push_downs.gif",
    "images/tricep/tricep_bench_dips.gif",
    "images/tricep/tricep_dips.gif",
    "images/tricep/tricep_push_downs.gif",
  ];

  var exerciseName = [
    "Barbell Extension",
    "Cable Extension",
    "Cable Push Down",
    "Diamond Push Down",
    "Dumbbell Extension",
    "Single Arm Extension",
    "Reverse Push Down",
    "Tricep Bench Dips",
    "Tricep Dips",
    "Tricep Push Down",
  ];

  var exerciseType = [
    "Medial",
    "Medial",
    "Lateral",
    "long head",
    "long head",
    "Medial",
    "Lateral",
    "Medial",
    "Lateral",
    "Medial",
  ];

  var descList = [
    "Medial",
    "Medial",
    "Lateral",
    "long head",
    "long head",
    "Medial",
    "Lateral",
    "Medial",
    "Lateral",
    "Medial",
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
        title: const Text('Tricep'),
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
