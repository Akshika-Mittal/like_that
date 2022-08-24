import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/polling/polling_result/components/polling_recommendation.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(242, 242, 242, 1),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 37,),
          Container(
            //width: 900,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
              child: Image(
                image: AssetImage(
                    'assets/images/Tiff Credits.png',
                ),
              ),
          ),
          SizedBox(height: 20,),
          Text(
            'Your Polling Has Been Accepted',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'We\'ve accepted your polling, and we\'ll \n announce the result at 12pm.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(124, 124, 124, 1),
            ),
          ),
          //SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: DefaultButton(
              text: 'View Details',
              press: () {  },
            ),
          ),
          SizedBox(height: 40,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Text(
                'Recommended',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text(
              'To recommend food items to be included into the main menu, click on Recommend tab below.',
              style: TextStyle(
                color :Color.fromRGBO(124, 124, 124 , 1),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          //SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: DefaultButton(
                text: 'Recommend',
                press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PollingRecommendation(),
                  ));
                },
            ),
          ),
        ],
      ),
    );
  }
}
