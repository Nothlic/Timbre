import 'package:flutter/material.dart';

import 'signup.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100.0, left: 140.0, right: 50.0),
              child: Stack(
                children: <Widget>[
                  new Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/TimbreLogo.png"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple))),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Home');
                        },
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.purpleAccent,
                        color: Colors.deepPurple,
                        elevation: 7.0,
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child:
                              ImageIcon(AssetImage('assets/images/facebook.png')),
                            ),
                            SizedBox(width: 10.0),
                            Center(
                              child: Text('Log in with facebook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Timbre ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/SignupPage');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
