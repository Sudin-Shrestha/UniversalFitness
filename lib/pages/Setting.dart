import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:async';
import 'dart:convert';
import 'package:universal_fitness/pages/home.dart';
import 'Notice.dart';
import 'Membership.dart';


class Setting extends StatefulWidget {


  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff102B46),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('Universal Physical Fitness', style: TextStyle(fontFamily: 'Pacifico', fontSize: 20, letterSpacing: 1),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Membership()),
              );
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff102B46),
              ),

              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: CircleAvatar(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/logo.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Welcome Member',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Notice'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Notice()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Membership Details'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Membership()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.lightBlue[100],
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.lightBlue[100],
                  child: CircleAvatar(
                    radius: 97,
                    backgroundImage: AssetImage('images/logo.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Container(
                alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 30),
                  child: Text("Basic Info", style: TextStyle(color: Colors.lightBlue,
                      fontSize: 20, fontWeight: FontWeight.bold),),
              ),
               SizedBox(
                 height: 20,
                 width: double.infinity,
               ),
               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                          child: Text("First Name", style: TextStyle(fontSize: 17,),),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                          child: Text("Sudin", style: TextStyle(fontSize: 17, color: Colors.grey),),
                      ),
                    ]
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Last Name", style: TextStyle(fontSize: 17,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text("Sudin", style: TextStyle(fontSize: 17, color: Colors.grey),),
                    ),
                  ]
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Address", style: TextStyle(fontSize: 17,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text("Ason", style: TextStyle(fontSize: 17, color: Colors.grey),),
                    ),
                  ]
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Contact", style: TextStyle(fontSize: 17,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text("9860132537", style: TextStyle(fontSize: 17, color: Colors.grey),),
                    ),
                  ]
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Email", style: TextStyle(fontSize: 17,),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text("Sudinshrestha@gmail.com", style: TextStyle(fontSize: 17, color: Colors.grey),),
                    ),
                  ]
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xffF1C40E))
                ),
                // onPressed: _getUserLoginToken,
                textColor: Colors.black,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xffF1C40E),
                        Color(0xffFFDD00),
                        Color(0xffFBB034),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: const Text('Logout', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
