import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:async';
import 'dart:convert';

import 'package:universal_fitness/pages/home.dart';
import 'Notice.dart';
import 'Membership.dart';

final serverEndpoint = "http://192.168.1.64/fitness/api/blog/all";

Future <List<Data>> fetchData() async {
  final response =
  await http.get(serverEndpoint);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }


}

class Data {
  final int id;
  final String title;
  final String description;

  Data({this.id, this.title, this.description});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      title: json['title'],
      description: json['description'],
    );
  }
}



class Blog extends StatefulWidget {
  Blog({Key key}) : super(key: key);

  @override
  _Blog createState() => _Blog();
}

class _Blog extends State<Blog> {


  Future <List<Data>> futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = fetchData();
  }
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
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Text('Blogs',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    letterSpacing: 1
                ),
              ),
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          FutureBuilder <List<Data>>(

            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Data> data = snapshot.data;
                return
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, data[index].title, data[index].description,);

                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                            padding: EdgeInsets.only(left: 20,),
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(width: 10.0, color: Colors.lightBlue.shade600),
                              ),
                              color: Color(0xffDEE4E7),
                            ),

                            child: Text(data[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ),

                        );
                      }
                  );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
              return CircularProgressIndicator();
            },
          ),


            ],
          ),
        ),
      ),

    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, title, desc) {
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
            padding: EdgeInsets.all(10),
            height: 360,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(5),
                //   child: Image.asset(
                //     img,
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black87,
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


