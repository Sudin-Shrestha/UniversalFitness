import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Cardio.dart';
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class AbsList extends StatefulWidget {

  @override
  _AbsList createState() => _AbsList();
}

class _AbsList extends State<AbsList> {

  var pngImage = [
    "images/abs/absPng/absRoller.png",
    "images/abs/absPng/airBike.png",
    "images/abs/absPng/crunches.png",
    "images/abs/absPng/declineLegRaise.png",
    "images/abs/absPng/dumbbellSideBends.png",
    "images/abs/absPng/flutterKicks.png",
    "images/abs/absPng/hangingLegRaise.png",
    "images/abs/absPng/highPulleyCrunches.png",
    "images/abs/absPng/machineCrunches.png",
    "images/abs/absPng/planking.png",
    "images/abs/absPng/romanChairSide.png",
    "images/abs/absPng/sitUps.png",
    "images/abs/absPng/toeTouch.png",
  ];

  var gifImage = [
    "images/abs/absRoller.gif",
    "images/abs/airBike.gif",
    "images/abs/crunches.gif",
    "images/abs/declineLegRaises.gif",
    "images/abs/dumbbellSideBends.gif",
    "images/abs/flutterKicks.gif",
    "images/abs/hangingLegRaises.gif",
    "images/abs/highPulleyCrunches.gif",
    "images/abs/machine_crunches.gif",
    "images/abs/planking.gif",
    "images/abs/romanChairSideBends.gif",
    "images/abs/sitUps.gif",
    "images/abs/toeTouch.gif",
  ];

  var exerciseName = [
    "Abs Roller",
    "Air Bike",
    "Crunches",
    "Decline Leg Raise",
    "Dumbbell Side Bends",
    "Flutter Kick",
    "Hanging Leg Raise",
    "High Pulley Crunches",
    "Machine Crunches",
    "Planking",
    "Roman Chair Side",
    "Sit ups",
    "Toe Touch"
  ];

  var exerciseType = [
    "Side Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Side Abs",
    "Side Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Side Abs",
    "Main Abs",
    "Main Abs"
  ];

  var descList = [
    "Side Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Side Abs",
    "Side Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Main Abs",
    "Side Abs",
    "Main Abs",
    "Main Abs"
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
