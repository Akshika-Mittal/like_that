import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          SizedBox(
           width: double.infinity,
            child: TextButton(

              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red,),
              ),
              child: Column(
                //width: MediaQuery.of(context).size.width,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                  'Edit Profile',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Change your name,delivery location and time ',
                    style: TextStyle(
                      color: Color.fromRGBO(126, 131, 137, 0.8),
                      fontSize: 13,
                    ),
                  ),

                ],  //color: Colors.blue,
                ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
               width: double.infinity,
                child: TextButton(

                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.blue,),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //width: MediaQuery.of(context).size.width,
                    children:[
                      Text(
                        'Notification Preferences',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Define what alerts and notifications you want to see',
                        style: TextStyle(
                          color: Color.fromRGBO(126, 131, 137, 0.8),
                          fontSize: 13,
                        ),
                      ),

                    ],  //color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(

              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.greenAccent,),
              ),
              child: Column(

                //width: MediaQuery.of(context).size.width,
                children:[
                  Text(
                    'Account Settings',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Change your email or delete your account ',
                    style: TextStyle(
                      color: Color.fromRGBO(126, 131, 137, 0.8),
                      fontSize: 13,
                    ),
                  ),

                ],  //color: Colors.blue,
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(126, 131, 137, 0.2),
            thickness: 2,
          ),

          MaterialButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
            },
            hoverColor: Colors.purple,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
              'Account Settings',
               style: TextStyle(
               color: Colors.black, fontSize: 16,
                 ),),
            ),
                Text(
                  'Change your email or delete your account ',
                   style: TextStyle(
                     color: Color.fromRGBO(126, 131, 137, 0.8),
                    fontSize: 13,
                  ),
                ),




              ],


            ),
          )










        ],
      ),
    );
  }
}