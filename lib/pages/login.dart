import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class LoginPage extends StatefulWidget {

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  
  final serverEndpoint = "http://192.168.0.11/fitness/api";

  void _getUserLoginToken() {
    Navigator.pushNamed(context, "/home");
    //print("hello");
    print(emailController.text + ' ' + passwordController.text);
    var map = new Map<String, dynamic>();
    map['username'] = emailController.text;
    map['password'] = passwordController.text;
    post('/user/member/login', map).then((value) => {print(value)}
    );


    // if(map['token'] != ''){
    //   Navigator.pushNamed(context, "/home");
    // }else{
    //   print("Invalid user Name");
    // }
  }


  Future<String> get(String endpoint) async {
    String _uri = serverEndpoint + endpoint;
    final response =  await http.get(_uri);
    return response.body;
    // var jsonResponse = convert.jsonDecode(response.body);
    // return jsonResponse['content'][0]['email'];
  }

  Future<String> post(String endpoint, var data) async {
    String _uri = serverEndpoint + endpoint;
    final response =  await http.post(_uri, body: data);
    return response.body;

  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                  ),
                  CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xff102B46),
                    child: CircleAvatar(
                      radius: 97,
                      backgroundImage: AssetImage('images/logo.png'),
                      backgroundColor: Colors.white,
                    ),
                  ),

                  Text('Universal Physical Fitness',
                    style: TextStyle(
                      color: Color(0xff102B46),
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                    ),
                  ),
                  Text('Login to continue',
                    style: TextStyle(
                      color: Color(0xff102B46),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    endIndent: 120.0,
                    indent: 120.0,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,//this has no effect
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.https),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,//this has no effect
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  Text('If having problem login please contact gym',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
                    onPressed: _getUserLoginToken,
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
                      child: const Text('Take me to app', textAlign: TextAlign.center, style: TextStyle(fontSize: 20,)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
