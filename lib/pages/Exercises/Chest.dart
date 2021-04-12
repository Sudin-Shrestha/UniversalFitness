import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Chest extends StatefulWidget {

  @override
  _Chest createState() => _Chest();
}

class _Chest extends State<Chest> {

  var pngImage = [
    "images/chest/chestPng/barbellPullovers.png",
    "images/chest/chestPng/benchPress.png",
    "images/chest/chestPng/cableFlys.png",
    "images/chest/chestPng/declineBenchPress.png",
    "images/chest/chestPng/dips.png",
    "images/chest/chestPng/dumbbellFlys.png",
    "images/chest/chestPng/dumbbellPress.png",
    "images/chest/chestPng/dumbbellPullovers.png",
    "images/chest/chestPng/inclineDumbbellFlys.png",
    "images/chest/chestPng/inclineDumbbellPress.png",
    "images/chest/chestPng/pecDeckFlys.png",
  ];

  var gifImage = [
    "images/chest/barbellPullovers.gif",
    "images/chest/benchPress.gif",
    "images/chest/cableFlys.gif",
    "images/chest/declineBenchPress.gif",
    "images/chest/dips.gif",
    "images/chest/dumbbellFlys.gif",
    "images/chest/dumbbellPress.gif",
    "images/chest/dumbbellPullovers.gif",
    "images/chest/inclineDumbbellFlys.gif",
    "images/chest/inclineDumbbellPress.gif",
    "images/chest/pecDeckFlys.gif",
  ];

  var exerciseName = [
    "Barbell Pullover",
    "Bench Press",
    "Cabel Flys",
    "Decline Bench Press",
    "Dips",
    "Dumbbell Fly",
    "Dumbbell Press",
    "Dumbbell Pullover",
    "Incline Dumbbell Fly",
    "Incline Dumbbell Press",
    "Pec Deck",
  ];

  var exerciseType = [
    "Overall Chest",
    "Center Chest",
    "Lower Chest",
    "Lower Chest",
    "Overall Chest",
    "Center Chest",
    "Center Chest",
    "Overall Chest",
    "Upper Chest",
    "Upper Chest",
    "Upper Chest"
  ];

  var descList = [
    "Movement \n\n1. Lie back onto a flat bench, with your feet planted on the ground while holding a barbell with and overhead grip (palms facing away from you). "
        "\n\n2. Inhale and slowly lower the barbell behind your head, arms bent slightly at the elbows, focusing on stretching as far as you can."
        "\n\n3. Exhale and return the barbell back above your chest.",

    "Movement \n\n1. Lie back onto a flat bench, with your bum touching the bench and feet planted on the ground."
    "\n\n2. Grab the bar with an overhand grip and your hands wider than shoulder width apart."
    "\n\n3. Push the bar all the way up and stop just before full extension then exhale.",

    "Movement \n\n1. Stand with leg shoulder width apart, torso leaning slightly forward and arms extended with a slight bend in the elbows."
    "\n\n2. Inhale and squeeze the arms together until the palms touch."
    "\n\n3. Exhale and slowly open the arms until extended.",

    "Movement \n\n1. Lie on a decline bench angled at 30-40 degree with your head tilted towards the floor, place your feet under the pads to anchor yourself and prevent sliding"
    "\n\n2. Grab the bar with an overhand grip and your hands wider than shoulder width apart."
    "\n\n3. Push the bar all the way up and stop just before full extension then exhale.",

    "Movement \n\n1. Suspend yourself between the parallel bars with your arms extended."
    "\n\n2. Inhale and bend your elbow to lower body into the dip."
    "\n\n3. When you have dropped as low as you can go (according to your flexibility), push upwards by extending your arms back to the original position and exhale.",

    "Movement \n\n1. Lie back onto a flat bench, start with your arms fully extended in front of you, palms facing each other and closer than shoulder width apart."
    "\n\n2. Inhale and open your arms out horizontally until they are parallel with floor or as far as you can go."
    "\n\n3. Exhale and slowly raise your arms back to the starting position.",

    "Movement \n\n1. Lie back on a flat bench with your bum touching the bench. Hold the dumbbells with an overhand grip at chest height, slightly wider than shoulder width apart."
    "\n\n2. Inhale and push the arms up vertically in a slow and controlled movement, making an arc so the dumbbells touch at the top of the movement."
    "\n\n3. Lower the dumbbells back to chest level and exhale.",

    "Movement \n\n1. Lie back onto a flat bench, with your feet planted on the ground while holding a dumbbell with your hands making a diamond shape around the handel and the weight resting in the palm of your hands."
    "\n\n2. Inhale and slowly lower the dumbbell behind your head, arms bent slightly at the elbows, focusing on stretching as far as you can."
    "\n\n3. Exhale and return the dumbbell back above your chest.",

  "Movement \n\n1. Lie back onto a incline bench, start with your arms fully extended above you, palms facing each other and closer than shoulder width apart."
  "\n\n2. Inhale and open your arm out horizontally until they are parallel with the floor or as far as you can go."
  "\n\n3. Exhale and slowly raise your arms back to the starting positions.",

    "Movement \n\n1. Sit on an inclined bench angled at 45 degrees, hold the dumbbells with an overhand grip at chest height, slightly wider than shoulder width apart."
    "\n\n2. Inhale and push the arms up vertically in a controlled movement, making an arc so the dumbbells touch at the top of the movement."
    "\n\n3. Lower the dumbbells back to chest level, towards the original starting position and exhale.",

    "Movement \n\n1. Take a seat in the machine and place your forearms on the pads, grab the hand grips if the machine has them."
    "\n\n2. Inhale and bring the arms together, squeeze when elbows are as close as they can get."
    "\n\n3. Exhale and slowly open the arms, returning to the original starting position."
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
        title: const Text('Chest'),
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
                  //width: 250,
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
