import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../pages/details.dart';
import 'package:timbre/util/data.dart';
import '../pages/rent.dart';
import '../widgets/badge.dart';
import '../pages/notification.dart';
import '../pages/help.dart';
import '../pages/profile.dart';
import '../pages/homepage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchControl = new TextEditingController();
  int _currentindex = 0;
  final List<Widget> _children = [
    HomePage(),
    NotificationPage(),
    HelpPage(),
    ProfilePage()
  ];

  void OnTappedBar(int index)
  {
    setState(() {
      _currentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: OnTappedBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home", style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              title: Text("Notification", style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
              ),
              title: Text(
                "Help",
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("Profile"))
        ],
      ),
    );
  }
}
