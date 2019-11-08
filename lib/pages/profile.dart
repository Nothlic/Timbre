import 'package:flutter/material.dart';
import 'package:timbre/styling.dart';
import '../customicon.dart';
import '../size_config.dart';

import '../pages/images.dart';
import '../strings.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[HomeScreeTopPart(), HomeScreenBottomPart()],
        ),
      ),
    );
  }
}

class WelcomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                  padding:  EdgeInsets.only(top:1 * SizeConfig.heightMultiplier),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      Strings.welcomeScreenTitle3,
                      style: Theme.of(context).textTheme.title,
                      textAlign: TextAlign.center,
                    ),
                  )
              )
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: 1 * SizeConfig.heightMultiplier),
              child: Image.asset(
                Images.homeImage3,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 2 * SizeConfig.heightMultiplier),
                      child: Text(
                        Strings.welcomeScreenSubTitle3,
                        style: Theme.of(context).textTheme.subtitle,
                        textAlign: TextAlign.center,
                      ),
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            constraints: BoxConstraints(
              minHeight: 6.5 * SizeConfig.heightMultiplier,
              maxHeight: 7.9 * SizeConfig.heightMultiplier,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4 * SizeConfig.heightMultiplier)),
              color: AppTheme.topBarBackgroundColor,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: new IconButton(
                    icon : new Icon(Icons.chevron_left),
                    onPressed: () {
                      Navigator.pop(context, '/WelcomeScreen2');
                    },
                    //Icons.chevron_left,
                    //size: 6 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
                Text(
                  Strings.getStartedButton,
                  style: Theme.of(context).textTheme.button,
                ),
                Expanded(
                    flex: 1,
                    child: new IconButton(
                      icon : new Icon(Icons.chevron_right),
                      onPressed: () {
                        Navigator.pushNamed(context, '/MyHomePage');
                      },
                    )
                ),
              ],
            )
        )
    );
  }
}

class HomeScreeTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Mclipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset("assets/images/Load4.png",
                      fit: BoxFit.cover, width: double.infinity),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color(0x00000000),
                              const Color(0xD9333333)
                            ],
                            stops: [
                              0.0,
                              0.9
                            ],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(0.0, 1.0))),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 95.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Timbre User : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          Text(
                            "Dimas Prasetyo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 370.0,
            right: -20.0,
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/PromoScreen');
                    },
                    child: Icon(
                      Icons.new_releases,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/PaymentScreen');
                      },
                      color: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 80.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Top Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(CustomIcons.back_icon,
                                size: 25.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  List<String> images = [
    "assets/images/jblhs.png",
    "assets/images/jblhs2.png",
    "assets/images/jblhs3.png"
  ];

  List<String> titles = ["Free Token 1x", "Free Token 2x ", "Free Token 3x"];

  List<Widget> movies() {
    List<Widget> movieList = new List();

    for (int i = 0; i < 3; i++) {
      var movieitem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        child: Container(
          height: 220.0,
          width: 135.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Image.asset(
                  images[i],
                  width: double.infinity,
                  height: 130.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                child: Text(titles[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: "SF-Pro-Display-Bold")),
              ),
            ],
          ),
        ),
      );
      movieList.add(movieitem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 360.0,
      margin: EdgeInsets.only(left: 65.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Your Voucher",
                  style: TextStyle(
                      fontSize: 22.0, fontFamily: "SF-Pro-Display-Bold"),
                ),
                FlatButton(
                  child: Text("My Qr Code"),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          ),
          Container(
            child:  RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/MyHomePage');
              },
              color: Colors.pink,
              padding: EdgeInsets.symmetric(
                  vertical: 20.0, horizontal: 100.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: "SF-Pro-Display-Bold"),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}

class Mclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100.0);

    var controlpoint = Offset(35.0, size.height);
    var endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
