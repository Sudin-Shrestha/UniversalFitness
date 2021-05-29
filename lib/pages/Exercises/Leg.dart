import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Exercise.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Leg extends StatefulWidget {

  @override
  _Leg createState() => _Leg();
}

class _Leg extends State<Leg> {

  var pngImage = [
    "images/leg/legPng/t_backward_lunges.png",
    "images/leg/legPng/t_barbell_lunges.png",
    "images/leg/legPng/t_box_squats.png",
    "images/leg/legPng/t_dumbbell_squats.png",
    "images/leg/legPng/t_front_squats.png",
    "images/leg/legPng/t_good_mornings.png",
    "images/leg/legPng/t_incline_leg_press.png",
    "images/leg/legPng/t_leg_extensions.png",
    "images/leg/legPng/t_leg_press.png",
    "images/leg/legPng/t_lunges.png",
    "images/leg/legPng/t_lying_leg_curls.png",
    "images/leg/legPng/t_machine_hack_squats.png",
    "images/leg/legPng/t_seated_barbell_calf_raises.png",
    "images/leg/legPng/t_squats.png",
    "images/leg/legPng/t_standing_calf_raises.png",

  ];

  var gifImage = [
    "images/leg/backward_lunges.gif",
    "images/leg/barbell_lunges.gif",
    "images/leg/box_squats.gif",
    "images/leg/dumbbell_squats.gif",
    "images/leg/front_squats.gif",
    "images/leg/good_mornings.gif",
    "images/leg/incline_leg_press.gif",
    "images/leg/leg_extensions.gif",
    "images/leg/leg_press.gif",
    "images/leg/lunges.gif",
    "images/leg/lying_leg_curls.gif",
    "images/leg/machine_hack_squats.gif",
    "images/leg/seated_barbell_calf_raises.gif",
    "images/leg/squats.gif",
    "images/leg/standing_calf_raises.gif",
  ];

  var exerciseName = [
    "Backward Lunges",
    "Barbell Lunges",
    "Box Squats",
    "Dumbbell Squats",
    "Front Squats",
    "Good Morning",
    "Incline Leg Press",
    "Leg Extension",
    "Leg Press",
    "Lunges",
    "Lying Leg Curls",
    "Machine Squats",
    "Seated Barbell Calf",
    "Squats",
    "Standing Claf Raise",
  ];

  var exerciseType = [
    "Quads",
    "Quads",
    "Quads",
    "Quads",
    "Quads",
    "Hamstrings",
    "Hamstrings",
    "Quads",
    "Quads",
    "Quads",
    "Hamstrings",
    "Hamstrings",
    "Calves",
    "Quads",
    "Calves",
  ];

  var descList = [
    "Movement \n\n1. Stand with your feet together and hold dumbbell in each hand hanging by your sides. Take a step backwards and bend the leg."
    "\n\n2. Try to make your front thigh parallel floor, you should ensure that your chest remains up during the motion of the lunge."
    "\n\n3. When you have completed the stretch, push off from the front leg, bringing the rear leg back to the original position.",

    "Movement \n\n1. Start with your feet together and a barbell resting on your traps. Take a step forward bending at the knee, lower your body into movement."
        "\n\n2. You are aiming to get your thigh horizontal, while other leg drops to form a right angle."
        "\n\n3. When ready, push through the front leg and return to the original position.",

    "Movement \n\n1. Position yourself so that when seated you will be able to sit on the edge of the bench."
        "\n\n2. Slowly lower your body so that you are sitting on the edge of the bench, ensure that your back is slightly arched."
        "\n\n3. After  seconds begin to stand, ensuring that you are pushing off from the flats of your feet and power through your quads.",

    "Movement \n\n1. Stand with your feet slightly past shoulder width apart, holding a dumbbell in each hand with your arms extended by your sides."
        "\n\n2. Inhale and tense your core muscles as you lower yourself. Whilst doing this ensure that your chest remains up."
        "\n\n3. When you have reached as low as you can go, push off through your feet, ensuring that you are concentrating on your quads.",

    "Movement \n\n1. Rest the bar on the top of your chest/front of your shoulders and raise your arms so your elbows are horizontal with the floor."
        "\n\n2. Inhale and tense your core muscles as you low yourself. The motion is as if you were to take a seat on a chair."
        "\n\n3. When you have reached as low as you can goi, push off through your feet, ensuring that you are concentrating on your quads.",

    "Movement \n\n1. Place the barbell across your traps of your shoulders. Your feet should be within shoulder width."
        "\n\n2. Inhale and tilt your body forward at the waist, maintaining a straight back as you bend. Keep your knees slightly bent as you perform the exercise."
        "\n\n3. Once you can feel the stretch in your hamstrings, proceed to tilt to the original position.",

    "Movement \n\n1. Sit in the machine with all of your back resting against the backrest. Place your feet slightly above the center of the foot pad."
        "\n\n2. Exhale as you push the foot pad upwards, extending your legs. Inhale and lower the foot pad towards your body."
        "\n\n3. When you have completed the movement ensure you restore the safety catch to exit the machine safely.",

    "Movement \n\n1. Take a seat in the machine, adjusting the backrest and the ankle rest to suit your height."
        "\n\n2. Inhale and raise your feet upwards so that your legs are horizontal to the floor."
        "\n\n3. Slowly lower the weight to the starting position and exhale.",

    "Movement \n\n1. Sit in the machine with all of your back resting against the backrest. Place your feet slightly above the center of the foot pad."
        "\n\n2. Exhale as you push the foot pad upwards, extending your legs. Inhale and lower the foot pad towards your body."
        "\n\n3. When you have completed the movement ensure you restore the safety catch to exit the machine safely.",

    "Movement \n\n1. Stand with your feet together and hold a dumbbell in each hand hanging by your sides."
        "\n\n2. Step forward with one leg, bend at the knee and lower your body so that your thigh is horizontal to the ground."
        "\n\n3. To return to the starting position push through your front leg and bring your feet back together.",

    "Movement \n\n1. At the machine lie down face first on the bench, positioning yourself so that your knees slightly hang off the edge."
        "\n\n2. Inhale and raise your legs together aiming to make the ankle pad touch your bum."
        "\n\n3. Once you have gone as far as you can go, exhale and slowly return to the starting position.",

    "Movement \n\n1. Position yourself so that your back is completely obn the back rest and the shoulder pads are on either side of your head."
        "\n\n2. Inhale and bends your legs as if you were going to sit on a chair. Push through the plate ensuring that your quads are doing the majority of the work."
        "\n\n3. Exhale as you return to the original position.",

    "Movement \n\n1. Sit on the edge of a bench, place your toes on a raised step or platform, heels off the edge."
        "\n\n2. Raise your feet until they are on tippy toes, you should feel the muscles in your calves strain as you reach the top."
        "\n\n3. Slowly drop your heels so that they fall below the step.",

    "Movement \n\n1. Position yourself so that your back is completely obn the back rest and the shoulder pads are on either side of your head."
        "\n\n2. Inhale and bends your legs as if you were going to sit on a chair. Push through the plate ensuring that your quads are doing the majority of the work."
        "\n\n3. Exhale as you return to the original position.",

    "Movement \n\n1. Stand on the edge of a bench, place your toes on a raised step or platform, heels off the edge."
        "\n\n2. Raise your feet until they are on tippy toes, you should feel the muscles in your calves strain as you reach the top."
        "\n\n3. Slowly drop your heels so that they fall below the step.",

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
