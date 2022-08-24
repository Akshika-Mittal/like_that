import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class FInalDelete extends StatelessWidget {
  static String routeName = "/final_delete";

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
            Text("You\'re about to delete your account"),
            Text("All the data associated with it (including your profile photos, subscription) will be permanently deleted in 30 days. This information can\'t be recovered oce the account is deleted ",
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(30),
              child: DefaultButton(
                text: "Delete my account now",
                press: () {
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextButton(
                onPressed: () { Navigator.pushNamed(context, SettingsScreen.routeName); },
                child:
                  Text('Back to Settings'),
                ),
              ),

          ],
        ),
      ),
    );
  }

}
