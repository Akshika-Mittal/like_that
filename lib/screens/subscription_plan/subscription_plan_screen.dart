import 'package:flutter/material.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/enums.dart';

import '../subscription_plan/components/body.dart';

class SubscriptionPlanScreen extends StatelessWidget {
  static String routeName ="/subscription_plan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tiff Subscription Plan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
    );
  }
}
