import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  //const ReusableCard({required this.cardChild,this.onPress});
  //final Widget cardChild;
  //final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    //return GestureDetector(
      //onTap: onPress,
      return Container(
        //child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFFBDBDBD),
          borderRadius: BorderRadius.circular(10),
        ),
    );
  }
}
