import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(242,242,242,1.0),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 50,
              child: Container(
                width : MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-kToolbarHeight-kBottomNavigationBarHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(255,255,255,1.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left:15, top: 10),
                  child: Text(
                    'Customer Support',
                     style:TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
          ),
          Positioned(
            top: 120,
            child: Container(
                width : MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-kToolbarHeight-kBottomNavigationBarHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(242,242,242,1.0),
                ),
                child: Stack(

                  children: <Widget>[
                    Positioned(
                      top:40,
                      left: 0,
                      child: TextButton(
                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                          },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Color.fromRGBO(242,242,242,1.0)),
                        ),
                          child: Container(

                          height: 80,
                          width:MediaQuery.of(context).size.width-20,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255,255,255,1.0),
                          ),
                          child: Stack(

                          children: <Widget>[
                          Positioned(
                          top:10,
                          left:12,
                          child: Text
                        (
                                  'Chat',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(104,102,102,1.0),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:40,
                                  left:12,
                                  child: Text(
                                    '9:00 AM - 9:00 PM',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromRGBO(104,102,102,1.0),
                                    ),
                                  ),
                              ),
                              Positioned(
                                top:10,
                                left:MediaQuery.of(context).size.width-90,
                                child: Image.asset('assets/images/chat.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Spacer(),

                    Positioned(
                      top:130,
                      left: 0,
                      child: TextButton(

                        onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Color.fromRGBO(242,242,242,1.0)),
                        ),
                        child: Container(
                          height: 80,
                          width:MediaQuery.of(context).size.width-20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255,255,255,1.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top:10,
                                left:12,
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(104,102,102,1.0),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:45,
                                left:12,
                                child: Text(
                                  '9:00 AM - 9:00 PM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(104,102,102,1.0),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:10,
                                left:MediaQuery.of(context).size.width-90,
                                child: Image.asset('assets/images/phone.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    //Spacer(),

                    Positioned(
                      top:220,
                      left: 0,
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ForgotPasswordScreen()));
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Color.fromRGBO(242,242,242,1.0)),
                        ),
                        child: Container(
                          height: 80,
                          width:MediaQuery.of(context).size.width-20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(255,255,255,1.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top:10,
                                left:12,
                                child: Text(
                                  'Write to us',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(104,102,102,1.0),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:10,
                                left:MediaQuery.of(context).size.width-90,
                                child: Image.asset('assets/images/mail.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
         // ),
        ],
      ),
    );
  }
}
