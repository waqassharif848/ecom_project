import 'package:ecom_project/Screen/forget.dart';
import 'package:ecom_project/Screen/forgetp.dart';
import 'package:ecom_project/Screen/home.dart';
import 'package:ecom_project/Screen/login.dart';
import 'package:ecom_project/Screen/register.dart';
import 'package:ecom_project/Screen/splashscreen.dart';
import 'package:flutter/material.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      'splashscreen': (context) => SplashScreen(),
      'login': (context) => MyLogin(),
      'register': (context) => MyLogout(),
      'forget': (context) => ForgetPassword(),
      'forgetp': (context) => ForgetP(),
      'home': (context) => Home(),
    }
  ));
}

