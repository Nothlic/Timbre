import 'package:flutter/material.dart';
import 'package:timbre/styling.dart';

import '../size_config.dart';

import '../pages/images.dart';
import '../strings.dart';

class HelpPage extends StatelessWidget{
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
                      Strings.help,
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
                Images.help,
              ),
            ),
          ),
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
        )
    );
  }
}