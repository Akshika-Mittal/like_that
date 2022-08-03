import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/home/components/home_header.dart';
import 'package:tiffin/screens/home/components/reusable_card.dart';
import 'package:tiffin/size_config.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          //crossAxisAlignment:s CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFBDBDBD),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
              ),
            ),
            Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                       child: ReusableCard(),
                       ),
                       Expanded(
                        child: ReusableCard(),
                    ),
                  ],
                ),
            ),
            Expanded(
              child: ReusableCard(),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(),
            ),
          ],

        ),
      ),
    );
  }
}
