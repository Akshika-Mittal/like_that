import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/home/components/OrderStatusHomePage.dart';
import 'package:tiffin/screens/home/components/home_header.dart';
import 'package:tiffin/screens/home/components/reusable_card.dart';
import 'package:tiffin/size_config.dart';

double totaldelivery = 10;
class Body extends StatelessWidget {
  @override
  final _controller= OrderStatusHomeScreenControl() ;
  double numberOfDaysLeft= 30-10;//use totaldelivery while deploying
  DateTime date = DateTime.now();
  String nextDate=DateFormat.yMMMMd().format(DateTime.now().add(new Duration(days: 1)));
  String currentDay = DateFormat('EEEE').format(DateTime.now());
  String nextDay = DateFormat('EEEE').format(DateTime.now().add(new Duration(days: 1)));
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Container(
        color: Color(0xFFE8E8E8),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Syed",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 100,
                child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom:5, ),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Icon(_controller.OrderStatusCurrent[index].icon,color: _controller.OrderStatusCurrent[index].color,)
                          ),
                          if(index<=3)Container(
                            width:45,
                            height: 5,
                            color: Colors.grey,
                          ),

                          // if(index==2)
                          //   Container(
                          //       margin: EdgeInsets.only(top: 5, bottom:5, ),
                          //       padding: EdgeInsets.all(8),
                          //       decoration: BoxDecoration(
                          //           color: Color(0xFFEB4749),
                          //           borderRadius: BorderRadius.circular(100)
                          //       ),
                          //       child: Icon(_controller.OrderStatusCurrent[index].icon,color: _controller.OrderStatusCurrent[index].active)
                          //   ),


                        ],

                      ),
                    );

                  },
                ),
              ),
              Container(
                height: 120,
                child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 5, bottom:5, ),
                              padding: EdgeInsets.all(8),
                              height: 120,
                              width: MediaQuery.of(context).size.width-40,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_controller.OrderStatusCurrent[index].title,style: TextStyle(fontSize:18,fontWeight: FontWeight.w600)),
                                  SizedBox( height: 5,),
                                  Container(
                                    width: MediaQuery.of(context).size.width-40,
                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                  SizedBox( height: 5,),
                                  Text(_controller.OrderStatusCurrent[index].description,style: TextStyle(fontSize:14,fontWeight: FontWeight.w400)),


                                ],
                              )
                          ),
                          SizedBox( width: 20,)


                        ],

                      ),
                    );

                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBD83),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            alignment: FractionalOffset.topRight,
                            image: AssetImage(
                                'assets/images/Lunch DashboardImage.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.45,
                                0.95,
                              ],
                              colors: <Color>[
                                Color(0xFFEB4749),
                                Color(0xFF420607),
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                              child: Text(
                                'Lunch',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'ETA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 20),
                              child: Text(
                                '12:00 AM - 2:30 PM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBD83),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            alignment: FractionalOffset.topRight,
                            image: AssetImage(
                                'assets/images/Lunch DashboardImage.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.45,
                                0.95,
                              ],
                              colors: <Color>[
                                Color(0xFFEB4749),
                                Color(0xFF420607),
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                              child: Text(
                                'Dinner',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'ETA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                              child: Text(
                                '7:30 PM - 9:30 PM',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      alignment: FractionalOffset.topRight,
                      image:
                      AssetImage('assets/images/Homescreen Polling (1).png'),
                    ),
                    // gradient: LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomLeft,
                    //     colors: <Color>[
                    //       Color(0xFFFFFFFF),
                    //       Color(0xFF9B9B9B),
                    //     ]),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text('Polling opens for'),
                        Text(
                          '$nextDay',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        Text('Lunch and Dinner'),
                        Text(DateFormat.yMMMMd().format(DateTime.now().add(new Duration(days: 1)))),
                        Text('Closes at 12:00 pm today'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBD83),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            alignment: FractionalOffset.topRight,
                            image: AssetImage(
                                'assets/images/Homescreen Pizza.png'),
                          ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.45,
                                0.95,
                              ],
                              colors: <Color>[
                                Color(0xFFEB4749),
                                Color(0xFF420607),
                              ]),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                              child: Text(
                                'Polling results for',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                '$currentDay',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Lunch and Dinner',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                              child: Text(
                                DateFormat.yMMMMd().format(date),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 135,
                    height: 135,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDBD83),
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          stops: [
                            0.45,
                            0.95,
                          ],
                          colors: <Color>[
                            Color(0xFFEB4749),
                            Color(0xFF420607),
                          ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SfRadialGauge(axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 30,
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.2,
                              cornerStyle: CornerStyle.bothCurve,
                              color: Colors.white,
                              thicknessUnit: GaugeSizeUnit.factor,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value: totaldelivery.toDouble(),
                                cornerStyle: CornerStyle.bothCurve,
                                width: 0.2,
                                sizeUnit: GaugeSizeUnit.factor,
                                color: Color(0xFFFEB701),
                              ),
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  positionFactor: 0.1,
                                  angle: 90,
                                  widget: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                            child: Text(
                                              totaldelivery.toStringAsFixed(0),
                                              style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                                            child: Text('/30',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text('Order',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w900),
                                      ),

                                    ],
                                  ))
                            ])
                      ]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 130,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 20),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Pro ",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                              Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                              Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),

                            ],
                          ),
                          Text("Expires in $numberOfDaysLeft days",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w600),),
                          //Text(result2,style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)//will be updated according to date
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          // image: DecorationImage(
                          //   fit: BoxFit.scaleDown,
                          //   alignment: FractionalOffset.topRight,
                          //   image: AssetImage(
                          //       'assets/images/Lunch DashboardImage.png'),
                          // ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 40, 0, 0),
                              child: Text(
                                'Reschedule',
                                style: TextStyle(

                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 20),
                              child: Text(
                                'For $nextDate',
                                style: TextStyle(

                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          //color: Color(0xFFEB4749),
                          borderRadius: BorderRadius.circular(10),
                          // image: DecorationImage(
                          //   fit: BoxFit.scaleDown,
                          //   alignment: FractionalOffset.topRight,
                          //   image: AssetImage(
                          //       'assets/images/Lunch DashboardImage.png'),
                          // ),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.45,
                                0.95,
                              ],
                              colors: <Color>[
                                Color(0xFFEB4749),
                                Color(0xFF420607),
                              ]),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 40, 0, 0),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 20),
                              child: Text(
                                'For $nextDate',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
