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
import 'screens/polling/menu_selection/menu_selection_screen.dart';
import 'screens/polling/polling_result/components/polling_recommendation.dart';
import 'screens/polling/polling_result/result_accepted_screen.dart';
import 'screens/settings/components/account_setting/components/anything_else.dart';
import 'screens/settings/components/account_setting/components/app_issue.dart';
import 'screens/settings/components/account_setting/components/change_email.dart';
import 'screens/settings/components/account_setting/components/delete_account.dart';
import 'screens/settings/components/account_setting/components/dont_want_to_use.dart';
import 'screens/settings/components/account_setting/sccount_setting_screen.dart';
import 'screens/settings/components/notification_preferences/notification_preferences_screen.dart';
import 'screens/subscription_plan/components/goal.dart';
import 'screens/subscription_plan/components/silver.dart';
import 'screens/subscription_plan/subscription_plan_screen.dart';

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
  NotificationPreferenceScreen.routeName : (context) => NotificationPreferenceScreen(),
  AccountSettingScreen.routeName : (context) => AccountSettingScreen(),
  ChangeEmail.routeName : (context) => ChangeEmail(),
  DeleteAccount.routeName : (context) => DeleteAccount(),
  DontWantTo.routeName : (context) => DontWantTo(),
  AppIssue.routeName : (context) => AppIssue(),
  AnythingElse.routeName : (context) => AnythingElse(),
  SubscriptionPlanScreen.routeName : (context) => SubscriptionPlanScreen(),
  Silver.routeName : (context) => Silver(),
  MenuSelection.routeName : (context) => MenuSelection(),
  Goal.routeName : (context) => Goal(),
  ResultAcceptedScreen.routeName : (context) => ResultAcceptedScreen(),
  PollingRecommendation.routeName : (context) => PollingRecommendation(),
};