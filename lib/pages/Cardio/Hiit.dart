import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class HiitList extends StatefulWidget {

  @override
  _HiitList createState() => _HiitList();
}

class _HiitList extends State<HiitList> {

  var pngImage = [
    "images/hiit/Kettlebell_alternate_curls.gif",
    "images/hiit/Kettlebell_alternate_shoulder_press.gif",
    "images/hiit/Kettlebell_alternate_rows.gif",
    "images/hiit/Kettlebell_clean_and_press.gif",
    "images/hiit/Kettlebell_double_thrusters.gif",
    "images/hiit/Kettlebell_floor_press.gif",
    "images/hiit/Kettlebell_goblet_squat.gif",
    "images/hiit/Kettlebell_one_arm_press.gif",
    "images/hiit/Kettlebell_one_arm_rows.gif",
    "images/hiit/Kettlebell_one_arm_swing.gif",
    "images/hiit/Kettlebell_overhead_press.gif",
    "images/hiit/Kettlebell_pistol_squat.gif",
    "images/hiit/Kettlebell_plyo_push_ups.gif",
    "images/hiit/Kettlebell_renegade_rows.gif",
    "images/hiit/Kettlebell_rows.gif",
    "images/hiit/Kettlebell_seated_press.gif",
    "images/hiit/Kettlebell_snatch.gif",
    "images/hiit/Kettlebell_turkish_get_up.gif",
    "images/hiit/Kettlebell_upright_rows.gif"
  ];

  var gifImage = [
    "images/hiit/Kettlebell_alternate_curls.gif",
    "images/hiit/Kettlebell_alternate_shoulder_press.gif",
    "images/hiit/Kettlebell_alternate_rows.gif",
    "images/hiit/Kettlebell_clean_and_press.gif",
    "images/hiit/Kettlebell_double_thrusters.gif",
    "images/hiit/Kettlebell_floor_press.gif",
    "images/hiit/Kettlebell_goblet_squat.gif",
    "images/hiit/Kettlebell_one_arm_floor_press.gif",
    "images/hiit/Kettlebell_one_arm_rows.gif",
    "images/hiit/Kettlebell_one_arm_swing.gif",
    "images/hiit/Kettlebell_overhead_press.gif",
    "images/hiit/Kettlebell_pistol_squat.gif",
    "images/hiit/Kettlebell_plyo_push_ups.gif",
    "images/hiit/Kettlebell_renegade_rows.gif",
    "images/hiit/Kettlebell_rows.gif",
    "images/hiit/Kettlebell_seated_press.gif",
    "images/hiit/Kettlebell_snatch.gif",
    "images/hiit/Kettlebell_turkish_get_up.gif",
    "images/hiit/Kettlebell_upright_rows.gif"
  ];

  var exerciseName = [
    "Kettlebell Alternate Curls",
    "Kettlebell Alternate Rows",
    "Kettlebell Clean and Press",
    "Kettlebell Double Thrusters",
    "Kettlebell Floor Press",
    "Kettlebell Goblet Squat",
    "Kettlebell One Arm Floor Press",
    "Kettlebell One Arm Rows",
    "Kettlebell One Arm Swing",
    "Kettlebell Overhead Press",
    "Kettlebell Pistol Squat",
    "Kettlebell Plyo Push Ups",
    "Kettlebell Rows",
    "Kettlebell Seated Press",
    "Kettlebell Alternate Curls",
    "Kettlebell Snatch",
    "Kettlebell Turkish Get up",
    "Kettlebell Upright Rows"
  ];

  var exerciseType = [
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
  ];

  var descList = [
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
    "HIIT",
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
                    builder: (context) => Cardio()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Abs'),
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
                                fontSize: 20,
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
