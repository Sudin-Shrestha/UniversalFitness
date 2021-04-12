import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Back extends StatefulWidget {

  @override
  _Back createState() => _Back();
}

class _Back extends State<Back> {

  var pngImage = [
    "images/back/backPng/backExtensions.png",
    "images/back/backPng/barbellRows.png",
    "images/back/backPng/chinUp.png",
    "images/back/backPng/closeGripLatPullDown.png",
    "images/back/backPng/deadlifts.png",
    "images/back/backPng/latPullDown.png",
    "images/back/backPng/oneArmDumbbell.png",
    "images/back/backPng/rearLatPullDown.png",
    "images/back/backPng/reverseChinUp.png",
    "images/back/backPng/rowing.png",
    "images/back/backPng/straightLegDeadlifts.png",
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
    "images/back/rearLatPullDown.gif",
    "images/back/reverseChinUp.gif",
    "images/back/rowing.gif",
    "images/back/straightLegDeadlifts.gif",
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
    "Rear Lat Pull Down",
    "Reverse Chin Up",
    "Rowing",
    "Straight Leg Deadlift",
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
    "Mid Back",
    "Mid Back",
    "Upper Back",
    "Lower Back",
    "Overall Back"
  ];

  var descList = [
    "Movement \n\n1. On a bench or Roman Chair, place your ankles under the roller pads and rest your lower body on the padded area."
    "\n\n2. Inhale and raise your upper body by tilting from the hips, while maintaining a straight back so that you are horizontal."
    "\n\n3. When you have completed the stretch, slowly control your upper body as you return to the initial position.",

    "Movement \n\n1. Stand with your feet about shoulder width apart, grab the barbell in an overhead grip just wider than shoulder width. When comfortable bend your legs slightly and lean about a 45 degree angle."
    "\n\n2. Inhale and contract your stomach muscles, this will support a straight back as you draw the barbell towards the area on your body."
    "\n\n3. When you have achieved the contraction, exhale and return the barbell to the starting position.",

    "Movement \n\n1. Grab the bar in an overhead grip, hands past shoulder width apart."
    "\n\n2. Pull your body upwards, drawing your chest to the chin up bar. As you perform this be sure to inhale."
    "\n\n3. Once you are level with the bar, exhale and slowly lower yourself to the starting positions.",

    "Movement \n\n1. Attach the close grip handle to the Lat Pull Down Machine. Sit facing the machine and place your legs under the pads to provide anchor."
    "\n\n2. Inhale as you bring the close grip towards the middle of your chest in a slow and controlled motion."
    "\n\n3. Once the close grip has met your chest, slowly guide the close grip back to its starting position.",

    "Movement \n\n1. Stand facing the bar, legs should be about shoulder width apart in a natural stance with the bar over the middle of your feet."
    "\n\n2. Grasp the bar in a comfortable grip about shoulder width apart. Hold your breath while contracting your abdominal and back muscles, raise the bar with power of your legs."
    "\n\n3. At the top of this motion ensure your arms and back are straight.",

    "Movement \n\n1. Sitting in the machine secure your legs under the pads and grip the bar in an overhand grip."
    "\n\n2. Inhale as you bring the bar towards the middle of your chest in a slow and controlled motion."
    "\n\n3. Bring the bar to your chest, exhale and slowly extend your arms back to the original position.",

    "Movement \n\n1. Put one knee and hand on a bench to support your weight. Bend over with a straight back and grab a dumbbell with a straight arm."
    "\n\n2. Inhale and contract the stomach muscles, this helps to maintain the stability throughout this motion."
    "\n\n3. Keep your elbow close to your body and raise it as high as possible, once at the top exhale and slowly return to the starting position.",

    "Movement \n\n1. Sitting in the machine secure your legs under the pads and grip the bar in an overhand grip."
    "\n\n2. Inhale as you bring the bar towards the rear of your neck in a slow and controlled motion."
    "\n\n3. Keep your body stationary during this motion. Try to activate your lats without using the momentum of your body to pull the bar towards you.",

    "Movement \n\n1. Grab the bar in an underhand grip with your hands about shoulder width apart."
    "\n\n2. Inhale and raise your chest to the bar. You should feel the muscles in your back and arms activating as you do this."
    "\n\n3. When chin has passed the bar, slowly lower yourself back down to the starting position, exhaling as you do this.",

    "Movement \n\n1. Sit on the machine and place you feet on the foot rests in front and use the close grip attachment."
    "\n\n2. Inhale and pull the close grip towards your stomach. Aim above the belly button and just below your ribs."
    "\n\n3. Keep your elbows close to your body to ensure that you engage your upper back.",

    "Movement \n\n1. Stand facing the bar, legs should be about shoulder width apart in a natural stance with the bar over the middle of your feet."
    "\n\n2. Grasp the bar in a comfortable grip about shoulder width apart. Hold your breath while contracting your abdominal and back muscles, raise the bar."
    "\n\n3. At the top of this motion ensure your arms and back are straight.",

    "Movement \n\n1. Stand facing the bar, feet should be past shoulder width apart, closer to the weight plates on each side with your toes pointing and arms inside of your legs."
    "\n\n2. Grasp the bar in a comfortable grip about shoulder width apart."
    "\n\n3. At the top of this motion ensure your arms and back are straight and are not hunching forward whilst holding the bar."
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
        title: const Text('Back'),
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
            height: 570,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 250,
                    height: 250,
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
                      maxLines: 20,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.left,
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
