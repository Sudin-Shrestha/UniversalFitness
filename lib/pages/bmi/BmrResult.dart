import 'package:flutter/material.dart';
import 'package:universal_fitness/pages/bmi/BmrInput.dart';
import 'package:universal_fitness/pages/bmi/ReuseCard.dart';
import 'BmrInput.dart';


class BmrResult extends StatelessWidget {

  BmrResult({@required this.bmrResult, @required this.resultText, @required this.interpretation});

  final String bmrResult;
  final String resultText;
  final String interpretation;


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
                    builder: (context) => BmrInput()),
              ); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('BMR Result'),
        actions: <Widget>[
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            alignment: Alignment.center,
            child: Text("Your Result", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          ),),
          Expanded(
            flex: 5,
            child: ReuseCard(colour: cardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(), style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    bmrResult, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 100),
                  ),
                  Text(
                    interpretation, style: TextStyle(color: Colors.black, fontSize: 23),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BmrInput()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 70.0,
              child: Text("RE-CALCULATE", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ),

        ],
      ),
    );
  }
}
