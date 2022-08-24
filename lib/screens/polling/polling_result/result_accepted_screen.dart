import 'package:flutter/material.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/enums.dart';

import '../../polling/polling_result/components/body.dart';

class ResultAcceptedScreen extends StatelessWidget {
  static String routeName = "/result_accepted";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Center(
          child: Image.asset('assets/images/title.png',
            fit: BoxFit.contain,
            //alignment: Alignment.center,
            height: 72,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert,
              color: Colors.redAccent,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.redAccent),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
      //bottomNavigationBar:
    );
  }
}
