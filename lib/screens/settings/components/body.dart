import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/settings/components/account_setting/sccount_setting_screen.dart';
import 'package:tiffin/screens/settings/components/notification_preferences/notification_preferences_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          MaterialButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
            },
            highlightColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.black, fontSize: 16,
                    ),),
                ),
                Text(
                  'Change your name,delivery location and time ',
                  style: TextStyle(
                    color: Color.fromRGBO(126, 131, 137, 0.8),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          MaterialButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NotificationPreferenceScreen()));
            },
            highlightColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Notification Preferences',
                    style: TextStyle(
                      color: Colors.black, fontSize: 16,
                    ),),
                ),
                Text(
                  'Define what alerts and notifications you want to see',
                  style: TextStyle(
                    color: Color.fromRGBO(126, 131, 137, 0.8),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          MaterialButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AccountSettingScreen()));
            },
            //hoverColor: Colors.white,
            highlightColor: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Account Settings',
               style: TextStyle(
               color: Colors.black, fontSize: 16,
                 ),),
            ),
                Text(
                  'Change your email or delete your account ',
                   style: TextStyle(
                     color: Color.fromRGBO(126, 131, 137, 0.8),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
        ],
      ),
    );
  }
}