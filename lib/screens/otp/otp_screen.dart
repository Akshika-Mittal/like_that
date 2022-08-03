import 'package:flutter/material.dart';
import 'package:tiffin/size_config.dart';

import '../otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
