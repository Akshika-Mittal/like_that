import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/sign_in/components/body.dart';
import 'package:tiffin/components/custom_suffix_icon.dart';
import 'package:tiffin/components/form_error.dart';
import 'package:tiffin/size_config.dart';

import '../../login_success/login_success_screen.dart';
//import 'package:shop_app/helper/keyboard.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}


class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  final List<String> errors =["Demo Error"];
  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text(
                "Remember Me",
              ),
              Spacer(),
              GestureDetector(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: kPrimaryColor,
                  ),
                ),
                onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
              ),
            ],
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                //KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your e-mail",
        labelText: "E-mail",
        floatingLabelBehavior:FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/mail.png",
        ),
      ),
    );
  }


  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPassNullError);
        } else if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kPassNullError);
          //return "";
        } else if (value.length < 8) {
          errors.add(kShortPassError);
          //return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        floatingLabelBehavior:FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/lock.png",
        ),
      ),
    );
  }
}


