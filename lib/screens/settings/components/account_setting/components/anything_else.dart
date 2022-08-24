import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class AnythingElse extends StatelessWidget {
  static String routeName = "/anything_else";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Delete Account",
          style: TextStyle(
            color: Color.fromRGBO(126, 131, 137, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Text("Anything else you would like to add?"),
            Text("Do you have any feedback for us? We would love to hear from you",
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(30),
              child: DefaultButton(
                text: "Next",
                press: () {
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
