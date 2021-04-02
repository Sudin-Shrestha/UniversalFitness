import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Biseps extends StatefulWidget {

  @override
  _Biseps createState() => _Biseps();
}

class _Biseps extends State<Biseps> {

  var pngImage = [
    "images/biseps/bisepsPng/barbellCurls.png",
    "images/biseps/bisepsPng/cableHammerCurls.png",
    "images/biseps/bisepsPng/concentrationCurls.png",
    "images/biseps/bisepsPng/dumbbellCurls.png",
    "images/biseps/bisepsPng/dumbbellPreacherCurls.png",
    "images/biseps/bisepsPng/hammerCurls.png",
    "images/biseps/bisepsPng/lowPulleyCurls.png",
    "images/biseps/bisepsPng/machineCurls.png",
    "images/biseps/bisepsPng/oneArmPreacherCurls.png",
    "images/biseps/bisepsPng/preacherCurls.png",
    "images/biseps/bisepsPng/reverseCurls.png",
    "images/biseps/bisepsPng/seatedBicepCurls.png",
    "images/biseps/bisepsPng/seatedInclineDumbbellCurls.png",
  ];

  var gifImage = [
    "images/biseps/barbellCurls.gif",
    "images/biseps/cableHammerCurls.gif",
    "images/biseps/concentrationCurls.gif",
    "images/biseps/dumbbellCurls.gif",
    "images/biseps/dumbbellPreacherCurls.gif",
    "images/biseps/hammerCurls.gif",
    "images/biseps/lowPulleyCurls.gif",
    "images/biseps/machineCurls.gif",
    "images/biseps/oneArmPreacherCurls.gif",
    "images/biseps/preacherCurls.gif",
    "images/biseps/reverseCurls.gif",
    "images/biseps/seatedBicepCurls.gif",
    "images/biseps/seatedInclineDumbbellCurls.gif",
  ];

  var exerciseName = [
    "Barbell Curls",
    "Cable Hammer",
    "Concentration Curls",
    "Dumbbell Curls",
    "Dumbbell Preacher",
    "Hammer Curls",
    "Low Pulley Curls",
    "Machine Curls",
    "One Arm Preacher",
    "Preacher Curls",
    "Reverse Curls",
    "Seated Bicep Curls",
    "Seated Incline Curls",

  ];

  var exerciseType = [
    "Coracobrachialis ",
    "Brachii",
    "Coracobrachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Brachii",
    "Brachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Brachialis",
    "Brachialis",
    "Brachii"
  ];

  var descList = [
    "Coracobrachialis ",
    "Brachii",
    "Coracobrachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Brachii",
    "Brachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Coracobrachialis",
    "Brachialis",
    "Brachialis",
    "Brachii"
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
        title: const Text('Biseps'),
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
