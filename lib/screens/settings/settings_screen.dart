import 'package:flutter/material.dart';

import 'package:tiffin/screens/settings/components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Color.fromRGBO(126,131, 137, 1),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
