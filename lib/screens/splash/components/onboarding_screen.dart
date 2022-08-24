import 'package:flutter/material.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/settings/components/notification_preferences/notification_preferences_screen.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:tiffin/screens/splash/components/Onboarding_controller.dart';
import 'package:tiffin/screens/splash/components/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:tiffin/size_config.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = OnboardingController();
  bool isLastPage=false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body:SafeArea(
          child:Stack(
            children:[
              PageView.builder(
                  controller: _controller.pageController,
                  onPageChanged: _controller.selecetedPageIndex,
                  itemCount: _controller.onboardingPages.length,
                  itemBuilder: (context,index){
                    if(index%2==0 && index!=4){
                      print(index);
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Align(
                              alignment: Alignment.centerLeft,
                              child:
                              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(_controller.onboardingPages[index].title,
                                  style:TextStyle(
                                    fontSize:28,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(235,71,73,1.0),
                                  ),
                                ),
                              ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: EdgeInsets.symmetric(horizontal: 20.0),
                               child: Text(_controller.onboardingPages[index].description,
                                style:TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(121,121,121,1.0),
                                ),
                               ),
                             ),
                             SizedBox(height: 20,),
                             Image.asset(
                                _controller.onboardingPages[index].imageAsset,
                                width: 600),
                        //     Column(
                        //       children:[
                        //         Positioned(
                        //         bottom: 160,
                        //         left: 20,
                        //         child: Row(
                        //           children: List.generate(_controller.onboardingPages.length, (index) =>
                        //               Obx(() {
                        //                 return Container(
                        //                   margin: EdgeInsets.all(4),
                        //                   width: 10,
                        //                   height: 10,
                        //                   decoration: BoxDecoration(
                        //                     color: _controller.selecetedPageIndex.value == index
                        //                         ? Color.fromRGBO(235, 71, 73, 1.0)
                        //                         : Color.fromRGBO(200, 200, 200, 1.0),
                        //                     shape: BoxShape.circle,
                        //                   ),);
                        //               }),
                        //           ),
                        //         ),
                        //       ),
                        // ],
                        //     ),
                        //     Positioned(
                        //       right: 20,
                        //       bottom: 15,
                        //       child: FloatingActionButton(
                        //         elevation: 1,
                        //         child: Icon(Icons.navigate_next,color: Colors.white,),
                        //         onPressed: _controller.forwardAction,
                        //         backgroundColor: Color.fromRGBO(235,71,73,1.0),
                        //
                        //       ),
                        //     ),
                          ],
                      ),
                    );
                  }if(index==4){
                      print("hellllllllllllllllllooooooooo");
                      isLastPage=true;
                      print(isLastPage);
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child:
                              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(_controller.onboardingPages[4].title,
                                  style:TextStyle(
                                    fontSize:28,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(235,71,73,1.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(_controller.onboardingPages[4].description,
                                style:TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(121,121,121,1.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Image.asset(
                                _controller.onboardingPages[4].imageAsset,
                                width: 600),
                            Container(child:MaterialButton(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SignInScreen()));
                              },
                              child: Text('Let\'s Get Started'),
                            ),),
                          ],
                        ),
                        //child: Text('Hello there'),
                      );
                    }
                  else{
                    return Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                _controller.onboardingPages[index].imageAsset,
                                width: 600,
                              ),
                              SizedBox(height: 20,),
                              Align(
                                alignment: Alignment.centerLeft,
                                child:
                                Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child:Text(_controller.onboardingPages[index].title,
                                    style:TextStyle(
                                      fontSize:28,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(235,71,73,1.0),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(_controller.onboardingPages[index].description,
                                  style:TextStyle(
                                    fontSize:16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(121,121,121,1.0),
                                  ),
                                ),
                              ),
                      //         Container(
                      //           child:Positioned(
                      //             bottom: 30,
                      //             left: 20,
                      //             child: Row(
                      //               children: List.generate(_controller.onboardingPages.length, (index) =>
                      //                   Obx(() {
                      //                     return Container(
                      //                       margin: EdgeInsets.all(4),
                      //                       width: 10,
                      //                       height: 10,
                      //                       decoration: BoxDecoration(
                      //                         color: _controller.selecetedPageIndex.value == index
                      //                             ? Color.fromRGBO(235, 71, 73, 1.0)
                      //                             : Color.fromRGBO(200, 200, 200, 1.0),
                      //                         shape: BoxShape.circle,
                      //                       ),);
                      //                   }),
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           right: 20,
                      //           bottom: 15,
                      //           child: FloatingActionButton(
                      //             elevation: 1,
                      //             child: Icon(Icons.navigate_next,color: Colors.white,),
                      //             onPressed: _controller.forwardAction,
                      //             backgroundColor: Color.fromRGBO(235,71,73,1.0),
                      //
                      //           ),
                      //         ),
                            ],
                        ),
                      );
                    }
                  }
              ),

          // isLastPage?Container(child:MaterialButton(
          //   onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NotificationPreferenceScreen()));
          //   },
          //   child: Text('Let\'s Get Started'),
          // ),):
          Container(
                child:Positioned(
                  bottom: 30,
                  left: 20,
                  child: Row(
                    children: List.generate(_controller.onboardingPages.length, (index) =>
                        Obx(() {
                          return Container(
                            margin: EdgeInsets.all(4),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: _controller.selecetedPageIndex.value == index
                                  ? Color.fromRGBO(235, 71, 73, 1.0)
                                  : Color.fromRGBO(200, 200, 200, 1.0),
                              shape: BoxShape.circle,
                            ),);
                        }),
                    ),
                  ),
                ),
               ),
            //     :Container(child:MaterialButton(
          //   onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context) =>NotificationPreferenceScreen()));
          //   },
          //   child: Text('Let\'s Get Started'),
          // ),),
              Positioned(
                right: 20,
                bottom: 15,
                child: FloatingActionButton(
                  elevation: 1,
                  child: Icon(Icons.navigate_next,color: Colors.white,),
                  onPressed: _controller.forwardAction,
                  backgroundColor: Color.fromRGBO(235,71,73,1.0),

                ),
              ),
            ],
          ),

        ),
    );

  }
}
