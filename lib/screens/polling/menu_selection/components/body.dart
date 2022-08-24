import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/subscription_plan/components/silver.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  final double circleRadius = 210.0;
  final double circleBorderWidth = 8.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 20,),
        Text(
          'Choose your appetite',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 50,),
        Expanded(
          child: Row(
            children: [
            Expanded(
              child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                GestureDetector(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver(),
                  ));},
                  child: Container(
                    margin: EdgeInsets.only(top: 76,left:22,right:22,bottom:40),
                    //color: kPrimaryColor,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 90,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Non Vegetarian',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Appetite Non-Veg.png'),
                    ),
                  ),
                  //decoration:
                  // ShapeDecoration(shape: CircleBorder(), color: Colors.transparent),
                  // child: Padding(
                  //   padding: EdgeInsets.all(circleBorderWidth),
                  //   child: DecoratedBox(
                  //     decoration: ShapeDecoration(
                  //         shape: CircleBorder(),
                  //         image: DecorationImage(
                  //             fit: BoxFit.cover,
                  //             image: AssetImage('assets/images/Appetite Non-Veg.png'))),
                  //   ),
                  // ),

                ),
              ],
          ),
            ),

              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver(),
                      ));},
                      child: Container(
                        margin: EdgeInsets.only(top: 76,left:22,right:22,bottom:40),
                        //color: kPrimaryColor,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          width: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 90,),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Vegetarian',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/Appetite Veg.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver(),
                      ));},
                      child: Container(
                        margin: EdgeInsets.only(top: 76,left:22,right:22,bottom:40),
                        //color: kPrimaryColor,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          width: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 90,),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Diet Non Vegetarian',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      // decoration:
                      // ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(circleBorderWidth),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/Diet Non-Veg.png'))),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver(),
                      ));},
                      child: Container(
                        margin: EdgeInsets.only(top: 76,left:22,right:22,bottom:40),
                        //color: kPrimaryColor,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          width: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 90,),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Diet Vegetarian',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      // decoration:
                      // ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(circleBorderWidth),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/Diet Veg.png'))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),



    ],
    );
  }
}
