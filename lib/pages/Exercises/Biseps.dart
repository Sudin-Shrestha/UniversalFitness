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
    "Movement \n\n1. Pickup the barbell with an underhand grip (palms facing up), hands slightly wider than shoulder width, keeping your arms close to your body and your back straight."
    "\n\n2. Inhale and raise the bar toward your chest by bending at the elbows."
    "\n\n3. Slowly lower the bar back to the ground in a controlled movement and exhale.",

    "Movement \n\n1. Stand facing the cable machine with your back straight and set the cable as low as it will go. Grab the rope with both hands with a natural grip."
    "\n\n2. Inhale and raise your hands up to your chest by bending at the elbow while keeping the rest of your arm still."
    "\n\n3. Slowly lower the pulley down and exhale.",

    "Movement \n\n1. Sit with your legs open, leaning forward with one arm hanging to the floor while holding a dumbbell and your elbow touching your inner thigh."
    "\n\n2. Inhale and raise the dumbbell so it touches your chest while keeping your arm still."
    "\n\n3. Slowly lower the dumbbell back to the floor and exhale.",

    "Movement \n\n1. Stand with your feet shoulder width apart and a straight back, holding a dumbbell in each hand hanging at your sides with palms facing each other."
    "\n\n2. Inhale and raise one hand up towards your chest while turning your wrist so your palm faces you."
    "\n\n3. Slowly lower the dumbbell down and alternate to the other arm.",

    "Movement \n\n1. Sit at the preacher bench, arms shoulder width apart and resting on the pad, holding the dumbbells in an underhand grip."
    "\n\n2. Inhale and raise the dumbbells to your head, either together or alternating, focus on the contraction."
    "\n\n3. Slowly lower the dumbbells back to the starting position and exhale, don't let the weights free-fall.",

    "Movement \n\n1. Sit or stand with your back straight, holding a dumbbell in each hand like you would a hammer."
    "\n\n2. Inhale and raise the dumbbells either at the same time or alternating by bending at the elbow while keeping the rest of your arm still."
    "\n\n3. Slowly lower the dumbbells back to the floor and exhale.",

    "Movement \n\n1. Stand facing the cable machine with your back straight and set the cable as low as it will go, your arm should be close to your body. Grab the handle with both hands with an underhand grip."
    "\n\n2. Inhale and raise your hands up to your chest by bending at the elbow."
    "\n\n3. Slowly lower the pulley down and exhale.",

    "Movement \n\n1. Sit at the machine, arms shoulder width apart and resting on the pad, holding the bar in an underhand grip."
    "\n\n2. Inhale and raise the bar to your head, focusing on the contraction."
    "\n\n3. Slowly lower the bar back to the starting position and exhale, don't let the weights free-fall.",

    "Movement \n\n1. Rest one arm on the pad, fully extended, holding a dumbbell with an underhand grip."
        "\n\n2. Inhale and raise the dumbbell toward your chest by bending at the elbow while keeping the rest of your arm still."
        "\n\n3. Slowly lower the dumbbell back to the ground in a controlled movement and exhale.",

    "Movement \n\n1. Sit at the preacher bench, arms shoulder width apart and resting on the pad, holding the bar in an underhand grip."
        "\n\n2. Inhale and raise the bar to your head, focusing on the contraction."
        "\n\n3. Slowly lower the bar back to the starting position and exhale, don't let the weights free-fall.",

    "Movement \n\n1. Stand with your back straight, arms extended and slightly wider than shoulder width apart, holding dumbbells in overhand grip."
        "\n\n2. Inhale and raise your hands to your chest, knuckles pointing up, bending at the elbows while keeping the rest of your arm still."
        "\n\n3. Slowly lower the dumbbells back to the floor and exhale.",

    "Movement \n\n1. Sit  with your back straight, holding a dumbbell in each hand hanging at your sides with palms facing each other."
        "\n\n2. Inhale and raise your hands up towards your chest while turning your wrists so your palms face you."
        "\n\n3. Slowly lower the dumbbells back to the floor and exhale. You can also do this exercise using alternating sides.",

    "Movement \n\n1. Sit on an incline bench, angled between 45-60 degree, holding a dumbbell in each hand hanging at your sides with palms facing each other."
        "\n\n2. Inhale and raise your hands up towards your chest while turning your wrists so your palms face you."
        "\n\n3. Slowly lower the dumbbells back to the floor and exhale. You can also do this exercise using alternating sides.",
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
