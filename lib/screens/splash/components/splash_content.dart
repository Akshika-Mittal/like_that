import 'package:flutter/material.dart';
import 'package:tiffin/size_config.dart';
import 'package:tiffin/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({ this.heading,this.text, this.image});

  final String? text, image,heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          heading!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(70),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(395),
          width: getProportionateScreenWidth(935),
        ),
      ],
    );
  }
}

