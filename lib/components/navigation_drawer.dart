import 'package:flutter/material.dart';
import 'package:tiffin/components/user_page.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';


class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name ="Akshika Mittal";
    final int customerId = 123456;
    final int mobileNo=123456;
    final String address="sd546b72xzz";
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
    return Drawer(
      child: Container(
        child: Material(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name:name,
                //customerId:customerId,
                //mobileNo:mobileNo,
                //address: address,
                onClicked:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(name:name,urlImage:urlImage),
              ),),),
              SizedBox(
                height: 30,
              ),
              buildMenuItem(
                  text: 'Orders',
                  onClicked: () => selectedItem(context,0),
                  //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Payment History',
                onClicked: () => selectedItem(context,1),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Credit',
                onClicked: () => selectedItem(context,2),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Settings',
                onClicked: () => selectedItem(context,3),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Submit Feedback',
                onClicked: () => selectedItem(context,4),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'About Us',
                onClicked: () => selectedItem(context,5),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Customer Support',
                onClicked: () => selectedItem(context,6),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 10,
              ),
              buildMenuItem(
                text: 'Cancellation Policy',
                onClicked: () => selectedItem(context,7),
                //icon: Icons.people,
              ),
              SizedBox(
                height: 70,
              ),
              buildMenuItem(
                text: 'Logout',
                onClicked: () => selectedItem(context,8),
                //icon: Icons.people,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    VoidCallback? onClicked,
    //required IconData icon,
}){
    final color=Colors.black;
    final hoverColor = Colors.white70;
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      //leading: Icon(icon,color:color),
      title: Text(text,style:TextStyle(color:color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),
      ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SettingsScreen(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AboutUs(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CustomerSupport(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CancelationPolicy(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen(),
        ));
        break;
    }
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    //required String address,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  // Text(
                  //   email,
                  //   style: TextStyle(fontSize: 14, color: Colors.white),
                  // ),
                ],
              ),
              Spacer(),

            ],
          ),
        ),
      );

}
