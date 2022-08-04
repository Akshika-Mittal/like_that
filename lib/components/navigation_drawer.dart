import 'package:flutter/material.dart';
import 'package:tiffin/components/menu_items.dart';
import 'package:tiffin/components/user_page.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';


class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = "Akshika Mittal";
    final String customerId = 'INR123456';
    final int mobileNo = 123456;
    final String address = "610/304/1, Dariyabad Allahabad dfghjkmoiuygfdswertgyhujikoiuyhgfcdxder5t6y78u9i0ijuh";
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.60,
        color: Color.fromRGBO(230, 230, 230, 1.0),
        padding: EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(urlImage),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Flexible(
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(name, style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  )),
                                  Text(customerId),
                                  SizedBox(
                                    width: 20,),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                    //height: 3
                                  ),
                                  Text(mobileNo.toString()),
                                  Divider(color: Colors.grey, thickness: 2,),
                                  Text(address),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(height: 30,),
            Column(
              children: drawerItems.map((element) => Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                         ),
                         padding: EdgeInsets.only(left: 10, right: 10),
                         height: 50,
                         child:MaterialButton(
                           onPressed:(){
                            selectedItem(context, element['route']);
                           },
                           child: Row(
                            children:[
                              Icon(element['icon'],color: Color.fromRGBO(199, 199, 199, 1.0),),
                              SizedBox(width:5,),
                              Text(element['title'],style: TextStyle( color: Colors.black, fontSize: 16),),]
                             ),
                         ),
                      ),
                    ],
                  ),
                  SizedBox( height: 10,)
                ],
               ),
              ).toList(),
            ),
            SizedBox(
              height: 70,),
          ],
        ),
      ),
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