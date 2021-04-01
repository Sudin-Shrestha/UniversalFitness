import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;
import 'package:universal_fitness/pages/home.dart';


class Trainer extends StatefulWidget {

  @override
  _Trainer createState() => _Trainer();
}

class _Trainer extends State<Trainer> {

  var trainerName = [
    "Naresh Malakar",
    "Sudin Shrestha",
    "Nishant Shrestha",
    "Yogesh Acharya",
    "Manish Gautam"
  ];

  var trainerTime = [
    "7:00am - 11:00am",
    "7:00am - 11:00am",
    "11:00am - 5:00pm",
    "5:00pm - 9:00pm",
    "5:00pm - 9:00pm",
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
                    builder: (context) => HomePage()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Trainer Details'),
        actions: <Widget>[
        ],
      ),
      body: ListView.builder(
        itemCount: trainerName.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){

              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset("images/trainerImg.png"),
                    ),
                    Padding(padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trainerName[index],
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: width,
                            child: Text(trainerTime[index],
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
