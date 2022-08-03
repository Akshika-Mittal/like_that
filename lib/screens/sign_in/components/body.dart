import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/components/no_account_text.dart';
import 'package:tiffin/components/social_cards.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/components/custom_suffix_icon.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/components/form_error.dart';
import 'package:tiffin/screens/sign_in/components/sign_form.dart';
import 'package:tiffin/size_config.dart';

import 'package:tiffin/components/custom_suffix_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your e-mail and password \n or continue with social media",
                  textAlign: TextAlign.center,
                  //style: ,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialCard(
                      icon: "assets/icons/facebook.png",
                      press: (){},
                    ),
                    socialCard(
                      icon: "assets/icons/google.png",
                      press: (){},
                    ),
                    socialCard(
                      icon: "assets/icons/twitter.png",
                      press: (){},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


