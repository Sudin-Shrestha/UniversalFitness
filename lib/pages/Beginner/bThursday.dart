import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'package:universal_fitness/pages/Strength/Beginner.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class bThursday extends StatefulWidget {

  @override
  _bThursday createState() => _bThursday();
}

class _bThursday extends State<bThursday> {

  var pngImage = [
    "images/back/backPng/backExtensions.png",
    "images/back/backPng/barbellRows.png",
    "images/back/backPng/chinUp.png",
    "images/back/backPng/closeGripLatPullDown.png",
    "images/back/backPng/deadlifts.png",
    "images/back/backPng/latPullDown.png",
    "images/back/backPng/oneArmDumbbell.png",
    "images/back/backPng/sumoDeadlift.png",
  ];

  var gifImage = [
    "images/back/backExtensions.gif",
    "images/back/barbellRows.gif",
    "images/back/chinUp.gif",
    "images/back/closeGripLatPullDown.gif",
    "images/back/deadlifts.gif",
    "images/back/latPullDown.gif",
    "images/back/oneArmDumbbell.gif",
    "images/back/sumoDeadlift.gif",
  ];

  var exerciseName = [
    "Back Extension",
    "Barbell Rows",
    "Chin Up",
    "Close Grip Lat",
    "Deadlift",
    "Lat Pull Down",
    "Single Arm Row",
    "Sumo Deadlidt",

  ];

  var exerciseType = [
    "Lower Back",
    "Back Wings",
    "Wings",
    "Wings",
    "Center Back",
    "Wings",
    "Wings",
    "Overall Back"
  ];

  var descList = [
    "Lower Back",
    "Back Wings",
    "Wings",
    "Wings",
    "Center Back",
    "Wings",
    "Wings",
    "Overall Back"
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
                    builder: (context) => Beginner()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Thursday Plan'),
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
