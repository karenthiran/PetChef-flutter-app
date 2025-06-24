import 'package:flutter/material.dart';
import 'package:petchef/pages/login.dart';
import 'package:petchef/widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(220, 116, 231, 118),
                  Color.fromARGB(255, 65, 150, 236),
                  Color(0xFF150B87)
                ],
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "images/petcheflogo.png",
                    width: MediaQuery.of(context).size.width / 3,
                    fit: BoxFit.cover,
                  ),
                ),
                //SizedBox(height: 10.0),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(height: 15.0),
                        Text("SIGNUP", style: Appwidget.loginstyle()),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: Appwidget.loginstyle(),
                            prefixIcon: Icon(Icons.person_2_outlined),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: Appwidget.loginstyle(),
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: Appwidget.loginstyle(),
                              prefixIcon: Icon(Icons.lock_open_outlined)),
                        ),
                        SizedBox(height: 70.0),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 3.0),
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFF0ACAAA),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "SIGNUP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                  },
                  child: Text(
                    "Already have an Account?Login",
                    style: Appwidget.loginstyle(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
