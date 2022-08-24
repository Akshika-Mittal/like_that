import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class DontWantTo extends StatelessWidget {
  static String routeName = "/dont_want_to";

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
            Text("I don\'t want to use Tiff service anymore"),
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
