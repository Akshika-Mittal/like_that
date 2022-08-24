import 'package:flutter/material.dart';

import 'package:tiffin/screens/cancellation_policy/components/body.dart';

class CancelationPolicy extends StatelessWidget {
  static String routeName = "/cancelation_policy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
            "Cancellation/Refund Policy",
            //textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(126,131, 137, 1),
            ),
          ),
        ),
      body: Body(),
    );
  }
}
