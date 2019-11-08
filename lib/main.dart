import 'package:flutter/material.dart';
import 'package:timbre/size_config.dart';
import 'pages/welcome_screen.dart';
import 'pages/welcome_screen2.dart';
import 'pages/welcome_screen3.dart';
import 'pages/signup.dart';
import 'pages/login.dart';
import 'pages/home.dart';
import 'pages/scan.dart';
import 'pages/payment.dart';
import 'pages/promo.dart';
import 'pages/notification.dart';
import 'styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder:(context,orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Timbre Rent Application',
              theme: AppTheme.lightTheme,
              initialRoute: '/',
              routes: {
                '/' : (context) => WelcomeScreen(),
                '/WelcomeScreen2' : (context) => WelcomeScreen2(),
                '/WelcomeScreen3' : (context) => WelcomeScreen3(),
                '/MyHomePage' : (context) => MyHomePage(),
                '/SignupPage' : (context) => SignupPage(),
                '/PaymentScreen' : (context) => PaymentScreen(),
                '/PromoScreen' : (context) => PromoScreen(),
                '/Home' : (context) => Home(),
                '/Scan' : (context) => Scan(),

                '/NotificationPage' : (context) => NotificationPage(),
              },
            );
          }
        );
      }
    );
  }
}