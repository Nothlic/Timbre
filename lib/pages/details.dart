import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../util/data.dart';
import '../widgets/badge.dart';


class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Center(
            child: IconBadge(
              icon: Feather.getIconData("shopping-cart"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),

      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[

              SizedBox(height: 10),

              Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "${furnitures[0]["img2"]}",
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "${furnitures[0]["name"]}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "JBL Earphone",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 30),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Sed porttitor lectus nibh. Cras ultricies ligula "
                    "sed magna dictum porta. Praesent sapien massa, "
                    "convallis a pellentesque nec, egestas non nisi. "
                    "Lorem ipsum dolor sit amet, consectetur adipiscing "
                    "elit. Nulla porttitor accumsan tincidunt. "
                    "Curabitur arcu erat, accumsan id imperdiet et, "
                    "porttitor at sem.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Photos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: furnitures.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map furniture = furnitures.reversed.toList()[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context){
                                return Details();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${furniture["img2"]}",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
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

        ],
      ),

    );
  }
}
