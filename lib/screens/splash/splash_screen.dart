import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiffin/size_config.dart';
import 'package:tiffin/screens/splash/components/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName="/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:1), ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(235,71,73,1.0),
                    Color.fromRGBO(114,13,14,1.0),],
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/tiff white.png',
                          width: 175,),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
