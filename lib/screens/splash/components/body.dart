
import 'package:flutter/material.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SignInScreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
            Image.asset("assets/images/title.png",),
      ],
    );
  }

  Widget _buildImage(String assetName, [double width = 380,double height =800]) {
    return Image.asset('assets/images/$assetName', width: width,height: height,);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
        fontSize: 15.0,
    );

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          color: kPrimaryColor,
      ),
      //titlePadding: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    const landing = const PageDecoration(

      pageColor: Colors.white,
      //imageAlignment: Alignment.center,
      //fullScreen: true,
      //bodyAlignment: Alignment.center,
      //imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 30,
      ),
      pages: [
        PageViewModel(
          title: " ",
          body:" ",
          image: _buildFullscreenImage(),
          decoration: landing,


        ),
        PageViewModel(
          title: "Choose your time",
          body:
          "Whether it's lunch or dinner we got you covered with new variety of delicacies.",
          image: _buildImage('2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Poll for your favourite items",
          body:
          "Poll for items you want to be included in the next day menu.The highest polled items will be included in the menu.",
          image: _buildImage('3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Chef creating wonders",
          body:
          "Our chefs will prepare fresh,healthy and lip smacking delicacies with their magic or you can masala.",
          image: _buildImage('4.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Super fast delivery",
          body:
          "Get super fast delivery within the allocated time frame and track your delivery superheros with this app.",
          image: _buildImage('5.png'),
          decoration: pageDecoration,
          // footer: ElevatedButton(
          //   onPressed: () {
          //     _onIntroEnd(context);
          //   },
          //   child: const Text(
          //     'Let\'s get Started',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: kPrimaryColor,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      showDoneButton: true,
      //rtl: true, // Display as right-to-left
      //back: const Icon(Icons.arrow_back),
      skip: const Text(
          'Skip',
          //textAlign: Alignment.topRight,
          style: TextStyle(

              fontWeight: FontWeight.w300,
          ),
      ),
      skipStyle: TextButton.styleFrom(
          primary: Color(0xFFBDBDBD),

      ),
       nextStyle: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
       ),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(10.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}