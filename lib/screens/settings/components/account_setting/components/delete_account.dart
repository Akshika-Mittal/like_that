import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/app_issue.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/change_email.dart';
import 'package:tiffin/screens/settings/components/account_setting/components/dont_want_to_use.dart';
import 'package:tiffin/screens/settings/components/notification_preferences/notification_preferences_screen.dart';

class DeleteAccount extends StatelessWidget {
  static String routeName ="/delete_account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Delete Account",
          style: TextStyle(
            color: Color.fromRGBO(126,131, 137, 1),
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
            Row(
              children: <Widget>[
                Text("I don\'t want to use Tiff service anymore"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.70,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>DontWantTo()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),

              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("The app is not working properly"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),

              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Service issue"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Food Quality"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Sending too many emails/notifications"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Text("Others"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.68,
                ),
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AppIssue()));},
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
