import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/routes.dart';
import 'package:tiffin/screens/splash/splash_screen.dart';
import 'package:tiffin/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

