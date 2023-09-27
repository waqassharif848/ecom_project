import 'dart:async';
import 'package:ecom_project/Screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:5), () =>
      Navigator.push(context, MaterialPageRoute(builder: (context) =>MyLogin()
      )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("Assets/appstore.png"),
                  radius: 90,
                ),
              ),
              SizedBox(height: 60,),
              Text('WELLCOME TO HEALTHY FOOD', style: TextStyle(fontSize:23,fontFamily: "Skranji", fontWeight: FontWeight.bold, color: Colors.pinkAccent),),
              SizedBox(height: 60,),
              Center(
              child: LoadingAnimationWidget.twistingDots(
              leftDotColor: const Color(0xFF1A1A3F),
              rightDotColor: const Color(0xFFEA3799),
              size: 80,
              ),
              )
            ],
          ),
        ) );
  }
}
