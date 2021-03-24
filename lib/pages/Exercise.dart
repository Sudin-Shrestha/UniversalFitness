import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:universal_fitness/pages/home.dart';

class Exercise extends StatefulWidget {

  @override
  _Exercise createState() => _Exercise();
}

class _Exercise extends State<Exercise> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                ); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Exercise'),
          actions: <Widget>[
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: new Image(image: AssetImage("images/chest.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                Container(
                  height: 200,

                  width: double.infinity,
                  child: new Image(image: AssetImage("images/back.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                Container(
                  height: 200,

                  width: double.infinity,
                  child: new Image(image: AssetImage("images/biseps.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: new Image(image: AssetImage("images/shoulder.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                Container(
                  height: 200,

                  width: double.infinity,
                  child: new Image(image: AssetImage("images/traps.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 2,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xffF1C40E)
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: new Image(image: AssetImage("images/leg.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
