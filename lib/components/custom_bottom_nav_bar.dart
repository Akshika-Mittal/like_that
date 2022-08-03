import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/home/home_screen.dart';

class CustomBottomNavBar extends StatelessWidget {

  CustomBottomNavBar({required this.selectedMenu});
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed:()=> Navigator.pushNamed(context,HomeScreen.routeName),
                icon: Icon(
                  Icons.home,
                  color: MenuState.home == selectedMenu?kPrimaryColor:Colors.black,
                ),
            ),
            IconButton(
              onPressed:(){},
              icon: Icon(
                Icons.calendar_today,
                color: MenuState.menu == selectedMenu?kPrimaryColor:Colors.black,
              ),
            ),
            IconButton(
              onPressed:()=> Navigator.pushNamed(context,AboutUs.routeName),
              icon: Icon(
                Icons.help_outline,
                color: MenuState.howItWorks == selectedMenu?kPrimaryColor:Colors.black,
              ),
            ),
            IconButton(
              onPressed:(){},
              icon: Icon(
                Icons.person,
                color: MenuState.profile == selectedMenu?kPrimaryColor:Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
