import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/subscription_plan/components/goal.dart';
import 'package:tiffin/size_config.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class Silver extends StatelessWidget {
  static String routeName="/silver";
  @override
  Widget build(BuildContext context)
  {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Choose your tiff plan',
          style: TextStyle(
            color: Color.fromRGBO(126, 131, 137, 1),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(height: 100,),
            Container(
              margin: EdgeInsets.only(top:120.0),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 38,),
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                    'Silver',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width-160,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '₹ 299',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Vegetarian - Non Vegetarian',
                              style: TextStyle(
                                height: .7,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 27,),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Box Contents',
                                style: TextStyle(
                                  //height: 1.5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 67,
                                    width:67,
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage('assets/images/Main Course 1.png'),
                                          height: 40,),
                                        Text('Main Course 1',style: TextStyle(fontSize: 9.5,fontWeight: FontWeight.bold,
                                          color: Colors.black,),),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 67,
                                    width:67,
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage('assets/images/Main Course 2.png'),
                                          height: 40,),
                                        Text('Main Course 2',style: TextStyle(fontSize: 9.5,fontWeight: FontWeight.bold,
                                          color: Colors.black,),),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 67,
                                    width:67,
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage('assets/images/Dal.png'),
                                          height: 40,),
                                        Text('Dal',style: TextStyle(fontSize: 9.5,fontWeight: FontWeight.bold,
                                          color: Colors.black,),),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 67,
                                    width:67,
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage('assets/images/Rice.png'),
                                          height: 40,),
                                        Text('Rice',style: TextStyle(fontSize: 9.5,fontWeight: FontWeight.bold,
                                          color: Colors.black,),),

                                      ],
                                    ),

                                  ),
                                )
                              ],
                            ),
                            //SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 67,
                                    width:67,
                                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      //crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const [
                                        Image(image: AssetImage('assets/images/Roti.png'),
                                          height: 40,),
                                        Text('Roti',style: TextStyle(
                                            fontSize: 9.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 67,
                                  width:67,
                                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      Image(image: AssetImage('assets/images/Sweets.png'),
                                      height: 40,),
                                      Text('Sweets',style: TextStyle(
                                          fontSize: 9.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                      ),),

                                    ],
                                  ),

                                ),
                              )
                              ],
                            ),
                            SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  //height: 1.5,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            //SizedBox(height: 2,),

                            Padding(
                              padding: const EdgeInsets.only(left:25.0),
                              child: Text(
                                '* Silver plan will include 6 items in the box.\n'
                                    '* Today\'s selected item will be delivered to you.\n'
                                    '* You can opt for the Vegetarian or Non Vegetarian box.\n'
                                    '* This plan will include 1 order for Rs. 299.\n'
                                    '* You can choose between lunch and dinner.\n'
                                    '* Polling will be diabled for single order window.\n',
                                style: TextStyle(
                                  //height: 1.5,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 1,),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '**This plan doesnot include the polling rights.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 46,),
                            Center(
                              child: Linkify(
                                onOpen: (link) => print("Clicked ${link.url}!"),
                                text: "Terms & Conditions",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                ),

                                linkStyle: TextStyle(color: Colors.red),
                              ),
                            ),
                            SizedBox(height: 5,),
                            SizedBox(
                              width: double.infinity,
                              height: getProportionateScreenHeight(56),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                ),
                                color: Colors.white,
                                onPressed: (){},
                                child: Text(
                                  'Proceed to Payment',
                                   style: TextStyle(
                                      fontSize: getProportionateScreenWidth(35),
                                      color: kPrimaryColor,
                                     fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                    ),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 160,
                width: MediaQuery.of(context).size.width-40,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                  child: Stack(
                    children: [
                      Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                        //height: 160,
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Goal(),
                            ));
                          },
                        ),),
                      Padding(padding: EdgeInsets.only(left: 15,top: 30,right: 10),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Silver ",style: TextStyle(color: Colors.white,fontSize: 38, fontWeight: FontWeight.w800),),
                                // Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                                // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                              ],
                            ),
                            //SizedBox(height: 1,),
                            Text("Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                            SizedBox(height: 30,),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Text("Validity: Single Order",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 13, fontWeight: FontWeight.w200),)),
                          ],
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
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}