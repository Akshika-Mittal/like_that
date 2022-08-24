import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class AppIssue extends StatelessWidget {
  static String routeName = "/app_issue";

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
            Text("Feel free to report any issues that you\'re facing with Tiff app. We\'ll do our best to fix them"),
            Text("Report",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Text("Would you rather delete your account?"),
            Text("Click on next to continue with deletion",
              style: TextStyle(
                color: Colors.red,
              ),
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
