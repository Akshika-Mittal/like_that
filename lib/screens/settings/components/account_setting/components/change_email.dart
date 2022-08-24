import 'package:flutter/material.dart';

class ChangeEmail extends StatelessWidget {
  static String routeName = "/change_email";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Change Email",
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
            Text(
              'To change your email, please change from your account setting.In case you face any difficulties '
                  'feel free to contact us at  help@tifffoods.com',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}