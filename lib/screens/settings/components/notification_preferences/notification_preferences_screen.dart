import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class NotificationPreferenceScreen extends StatefulWidget {
  static String routeName = "/notification_preference";

  @override
  State<NotificationPreferenceScreen> createState() => _NotificationPreferenceScreenState();
}

class _NotificationPreferenceScreenState extends State<NotificationPreferenceScreen> {
  bool valuefirst = false;

  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification Preferences",
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
            CheckboxListTile(
              title: Text("Promos and Offers"),
              subtitle: Text("Receive coupons, promotions and money saving offers"),
              value: this.valuefirst,
              onChanged:(bool? value) {
                setState(() {
                  this.valuefirst = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            CheckboxListTile(

                title: Text("Orders and Purchases"),
              subtitle: Text("Receive updates related to your order status,membership and more"),
              value: this.valuesecond,
              onChanged:(bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(30),
              child: DefaultButton(
                text: "Save Changes",
                press: (){
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
