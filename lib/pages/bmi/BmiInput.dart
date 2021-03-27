import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:universal_fitness/pages/Diet.dart';
import 'dart:convert' as convert;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_fitness/pages/bmi/BmiResult.dart';
import 'icon_content.dart';
import 'ReuseCard.dart';
import 'BmiCalc.dart';


import 'package:universal_fitness/pages/home.dart';

const bottomContainerHeight = 70;
const cardColor = Color(0xffDEE4E7);
const clickedColor = Color(0xffb7c6bf);

class BmiInput extends StatefulWidget {

  @override
  _BmiInput createState() => _BmiInput();
}

class _BmiInput extends State<BmiInput> {

  Color maleCardColor = cardColor;
  Color femaleCardColor = cardColor;

  void updateColor(int gender){
    if (gender == 1){
      if(maleCardColor == cardColor){
        maleCardColor = clickedColor;
        femaleCardColor = cardColor;
      }else{
        maleCardColor= cardColor;
      }
    }

    if (gender == 2){
      if(femaleCardColor == cardColor){
        femaleCardColor = clickedColor;
        maleCardColor = cardColor;
      }else{
        femaleCardColor= cardColor;
      }
    }
  }

  int height = 180;
  int weight = 60;
  int age = 20;

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
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage()),
              ); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('BMI Calculator'),
        actions: <Widget>[
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReuseCard(
                    colour: maleCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),),

              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    updateColor(2);
                  });
                },
                child: ReuseCard(
                  colour: femaleCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),),
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseCard(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),),
                        Text("cm", style: TextStyle(fontSize: 20),),
                        Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newVal) {
                              setState(() {
                                height = newVal.round();
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),),
            ],
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReuseCard(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                    Text(weight.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconBtn(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              weight --;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconBtn(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight ++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),),
              Expanded(child: ReuseCard(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                    Text(age.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconBtn(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              age --;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconBtn(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              age ++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),),
            ],
          ),),
          GestureDetector(
            onTap: (){
              BmiCalc calc = BmiCalc(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BmiResult(
                      bmiResult: calc.calBmi(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpret(),
                    ),),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 70.0,
              child: Text("CALCULATE", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}


class RoundIconBtn extends StatelessWidget {
  RoundIconBtn ({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Colors.blueGrey,
    );
  }
}




