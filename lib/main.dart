import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_fitness/pages/home.dart';
import 'package:universal_fitness/pages/login.dart';
import 'package:universal_fitness/pages/Blog.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';



void main() async {
  //Landscape disable
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //Push Notification

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // int selectedIndex = 0;
  // final _pageOption = [HomePage(), Blog()];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/login': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => HomePage(),
      },

    );


  }
}
