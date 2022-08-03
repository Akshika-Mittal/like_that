import 'package:flutter/material.dart';

import 'package:tiffin/screens/about_us/components/body.dart';

class AboutUs extends StatelessWidget {
  static String routeName = "/about_us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Center(
          child: Text(
            "About Us",
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(126,131, 137, 1),
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
