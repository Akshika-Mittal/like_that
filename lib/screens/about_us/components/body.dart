import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatelessWidget {

  // Widget box({width: 60.0, height: 60.0,text,image}) {
  //   return Container(
  //     width: width,
  //     height: height,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(12),
  //       color: Colors.white,
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.all(2),
  //           child: Image.asset(
  //             image,
  //           ),
  //         ),
  //         // SizedBox(
  //         //   height: 2,
  //         // ),
  //         Text(
  //           text,
  //           style: TextStyle(
  //             fontSize: 10,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromRGBO(235, 71, 73, 1.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  'Tiff Foods Pvt.Ltd.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Text('Tiffin Service Curated by You',
                  textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.w500,
                     fontSize: 13,
                   ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'TIFF is a premium Tiffin Subscription Delivery Service. Providing highest quality of homemade food'
                    ',which is not just lip-smacking delicious but healthy too! Our delectable menu'
                     'is curated by our customers. The newly introduced polling syste, let\'s our customer choose the next day\'s menu.\n'
                    'All our food items are prepared by professional chefs to provide hearty and appetizing homemade food consisting of a '
                    'variety of delicacies from different parts of the country.\n'
                    'For our health concious lot, we have a team of professional dietitians working closely with our chefs. Our Saturday'
                    'and Sunday special will be a surprise menu for our customers to fulfill their culinary'
                    'indulgence with luscious delicacies at their coonvenience.\n'
                    'TIFF facilitates delivery of premium meals and homemade delicacies whether it\'s your home or office.\n'
                    'Plan your means a day before and get them delivered to your home or office by subscribing to our mean plans.',

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: <Widget>[
                //     box(
                //       text: 'Starters',
                //       image: 'assets/images/A1.png',
                //     ),
                //     box(
                //       text: 'Main Course 1',
                //       image:'assets/images/A2.png',
                //     ),
                //     box(
                //       text: 'Main Course 2',
                //       image:'assets/images/A3.png',
                //     ),
                //     box(
                //       text: 'Dal',
                //       image:'assets/images/A4.png',
                //     ),
                //   ],
                // ),
                // SizedBox(/
                //   height: 10,
                //),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: <Widget>[
                //     box(
                //       text: 'Rice',
                //       image:'assets/images/A5.png',
                //     ),
                //     box(
                //       text: 'Roti',
                //       image:'assets/images/A6.png',
                //     ),
                //     box(
                //       text: 'Desserts',
                //       image:'assets/images/A7.png',
                //     ),
                //     box(
                //       text: 'Salad',
                //       image:'assets/images/A8.png',
                //     ),kya batana tha?????????yahi the hogya krne do aage abok theek get lost apni ladkiyo pass ok they waiting for m ha toh jaoo turnt jao dafa ho jao
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}