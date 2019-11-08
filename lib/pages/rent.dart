import 'package:flutter/material.dart';
import 'package:timbre/styling.dart';

import '../size_config.dart';

import '../pages/images.dart';
import '../strings.dart';

class Rent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Align(alignment: Alignment.center, child:WelcomeContentWidget()),
            ),
            ButtonWidget(),
          ],
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
                      Strings.rentTitle,
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
                Images.rent,
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
                        Strings.rentSubTitle,
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
                    icon : new Icon(null),
                    //Icons.chevron_left,
                    //size: 6 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
                Text(
                  Strings.scanButton,
                  style: Theme.of(context).textTheme.button,
                ),
                Expanded(
                    flex: 1,
                    child: new IconButton(
                      icon : new Icon(Icons.chevron_right),
                      onPressed: () {
                        Navigator.pushNamed(context, '/Scan');
                      },
                    )
                ),
              ],
            )
        )
    );
  }
}