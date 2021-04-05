import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:universal_fitness/pages/Utility.dart';



class Stopwatch extends StatefulWidget {
  @override
  _Stopwatch createState() => _Stopwatch();
}

class _Stopwatch extends State<Stopwatch> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final _isHour = true;
  final _scrollController = ScrollController();



  void dispose(){
    _stopWatchTimer.dispose();
    _scrollController.dispose();
  }

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
                    builder: (context) => Utility()),
              );  },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Utiltiy'),
        actions: <Widget>[
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
              stream: _stopWatchTimer.rawTime,
              initialData: _stopWatchTimer.rawTime.valueWrapper,
              builder: (context, snapshot) {
                final value = snapshot.data;
                final displayTime = StopWatchTimer.getDisplayTime(value, hours: _isHour);
                return Text(displayTime,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  color: Colors.green,
                  label: "Start",
                  onPress: (){
                    _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                  },
                ),
                SizedBox(
                  width: 10.0,
                ),
                CustomButton(
                  color: Colors.red,
                  label: "Stop",
                  onPress: (){
                    _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                  },
                ),
              ],
            ),
            // CustomButton(
            //   color: Color(0xFFF15C2A),
            //   label: "Lap",
            //   onPress: (){
            //     _stopWatchTimer.onExecute.add(StopWatchExecute.lap);
            //   },
            // ),
            CustomButton(
              color: Colors.black,
              label: "Reset",
              onPress: (){
                _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
              },
            ),


          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color color;
  final Function onPress;
  final String label;
  CustomButton({this.color, this.onPress, this.label});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      shape: const StadiumBorder(),
      onPressed: onPress,
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),

    );
  }
}

