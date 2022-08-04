import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';

class AccountSettingScreen extends StatelessWidget {
  static String routeName ="/AccountSetting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Account Settings",
          style: TextStyle(
            color: Color.fromRGBO(126,131, 137, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Change Email"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                ),
                Icon(
                    Icons.keyboard_arrow_right_rounded,
                  color: kPrimaryColor,
                ),

              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Delete Account"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: kPrimaryColor,
                ),

              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
          ],
        ),
      ),

    );
  }
}
