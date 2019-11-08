import 'package:flutter/material.dart';
import 'package:timbre/styling.dart';

import '../size_config.dart';
import '../pages/images.dart';
import '../strings.dart';

class PromoScreen extends StatelessWidget{
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
              padding:  EdgeInsets.symmetric(vertical: 1 * SizeConfig.heightMultiplier),
              child: Image.asset(
                Images.promo,
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
                      Navigator.pop(context, '/Home');
                    },
                    //Icons.chevron_left,
                    //size: 6 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
                Text(
                  Strings.mapButton,
                  style: Theme.of(context).textTheme.button,
                ),
                Expanded(
                  flex: 1,
                  child: new IconButton(
                    icon : new Icon(null),
                    //Icons.chevron_right,
                    //size: 6 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ],
            )
        )
    );
  }
}