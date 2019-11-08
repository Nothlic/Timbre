import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../pages/details.dart';
import 'package:timbre/util/data.dart';
import '../pages/rent.dart';
import '../widgets/badge.dart';
import '../pages/notification.dart';
import '../pages/help.dart';
import '../pages/profile.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchControl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(right: 20 , top: 40),
            child: new Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Image.asset("assets/images/TimbreLogo.png"),
              ],
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(
                      Feather.getIconData("search"),
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                  controller: _searchControl,
                ),

              ),
            ),
          ),
          SizedBox(height: 30),


          Container(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return furniture['route'];
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 275,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            furniture['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${furniture["img"]}",
                              height: 240,
                              width: 280,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },

            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Product For Rent",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),

          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    height: 140,
                    width: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "${furniture["img2"]}",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
