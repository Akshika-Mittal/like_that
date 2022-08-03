// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class HomeHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
