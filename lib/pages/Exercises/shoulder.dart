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
    "Movement \n\n1. Sit on the edge of bench or a shoulder press frame with your feet on the ground and back straight. Hold the dumbbells at shoulder height with an underhand grip."
        "\n\n2. Inhale and press upwards, as you extend your arms twist your wrists so when the motion is completed your palms are in an overhand grip."
        "\n\n3. Exhale and slowly lower the dumbbells to the starting position.",

    "Movement \n\n1. Stand with your feet in a natural stance and back straight, holding a barbell with an overhand grip."
        "\n\n2. Inhale and raise the bar until it is horizontal with the ground. Keep your arms extended with a slight bend in the elbows"
        "\n\n3. Exhale and slowly return to the starting position.",

    "Movement \n\n1. Stand with your feet, shoulder width apart and keep your chest up as you hold the barbell."
        "\n\n2. Leading with your hands, explode up through your legs and raise the barbell along."
        "\n\n3. Exhale and slowly return to the starting position.",

    "Movement \n\n1. Stand with your feet in a natural stance and back straight, holding a barbell with an overhand grip slightly closer than shoulder width."
        "\n\n2. Inhale and raise the bar close to your body until it reaches under your chin, keeping your elbows up as high as possible."
        "\n\n3. Exhale and slowly lower the bar to the starting position.",

    "Movement \n\n1. Stand with your feet shoulder width apart, bending forward at the hips with a straight back, holding the cable close to your body."
        "\n\n2. Inhale and raise the cable until your arm is horizontal with the ground. Keep your arm extended with a slight bend in the elbow."
        "\n\n3. Exhale and slowly return to the starting position. Once you have completed one side alternate to the other.",

    "Movement \n\n1. Stand with your feet in a natural stance, back straight and dumbbells hanging in front of you with your palms facing your thighs."
        "\n\n2. Inhale and raise one dumbbell until it bis horizontal with the ground. Keep your arm extended with a slight bend in the elbow."
        "\n\n3. Exhale and slowly return to the starting position the alternate to the other arm.",

    "Movement \n\n1. Stand with your feet, shoulder width apart and keep your chest up as you hold the dumbbells."
        "\n\n2. Leading with your hands, explode up through your legs and raise the dumbbells along."
        "\n\n3. Exhale and slowly return to the starting position.",

    "Movement \n\n1. Stand facing the cable machine with the pulley raised slightly higher than head height. With your shoulder back and arms outstretched grab the rope with an overhand grip."
        "\n\n2. Squeeze your shoulder blades back and bring the rope towards your forehead."
        "\n\n3. Hold for one second and slowly lower back to the original position.",

    "Movement \n\n1. Stand holding a barbell at shoulder height."
        "\n\n2. Explode up, pushing the weight to the ceiling until your arms are fully extended."
        "\n\n3. Bend your elbows and slowly lower the weights to the starting position.",

    "Movement \n\n1. Sit on the edge of a bench or a shoulder press frame with your feet on the ground and back straight."
        "\n\n2. Grab the bar with an overhand grip. Inhale and press upwards, extending your arms almost to full extension."
        "\n\n3. Exhale and slowly lower the bar to the starting position.",

    "Movement \n\n1. Sit on the edge of a bench with your feet on the ground, bending forward at the hips with a straight back, holding the cables close to your body."
        "\n\n2. Inhale and raise your arms until they are horizontal with the ground."
        "\n\n3. Exhale and slowly return to the starting position.",

    "Movement \n\n1. Sit in the machine under the handles with your back on the pad, feet planted on the ground and hands holding the grips."
        "\n\n2. Inhale and press upwards, extending your arms almost to full extension."
        "\n\n3. Exhale and slowly lower the machine back to the starting position.",

    "Movement \n\n1. Stand with your feet, shoulder width apart and keep your chest up as you hold the barbell."
        "\n\n2. Leading with your hands, explode up through your legs and raise the barbell along."
        "\n\n3. Exhale and slowly return to the starting position.",
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
