import 'package:flutter/material.dart';

import 'package:tiffin/screens/settings/components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: null,
        title: Center(
          child: Text(
            "Settings",
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
