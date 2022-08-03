import 'package:flutter/material.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/login_success/login_success_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:tiffin/screens/sign_up/sign_up_screen.dart';
import 'package:tiffin/screens/splash/splash_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/otp/otp_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CustomerSupport.routeName: (context) => CustomerSupport(),
  AboutUs.routeName : (context) => AboutUs(),
  CancelationPolicy.routeName : (context) => CancelationPolicy(),
  SettingsScreen.routeName : (context) => SettingsScreen(),
};