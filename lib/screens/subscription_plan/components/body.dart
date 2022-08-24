import 'package:flutter/material.dart';
import 'package:tiffin/screens/subscription_plan/components/silver.dart';
import 'package:tiffin/size_config.dart';

class Body extends StatelessWidget {
  @override
  //List<category_list> categories = Utils.getCategory();
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Silver(),
                          ));
                        },
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
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
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: Single Order",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Pro Silver ",style: TextStyle(color: Colors.white,fontSize: 38, fontWeight: FontWeight.w800),),
                              // Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                              // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                            ],
                          ),
                          //SizedBox(height: 1,),
                          Text("Healthy Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: Single Order",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 38, fontWeight: FontWeight.w800),),
                              // Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                              // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                            ],
                          ),
                          //SizedBox(height: 1,),
                          Text("Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: 30 Days",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Pro",style: TextStyle(color: Colors.white,fontSize: 38, fontWeight: FontWeight.w800),),
                              Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 38, fontWeight: FontWeight.w600),),
                              // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                            ],
                          ),
                          //SizedBox(height: 1,),
                          Text("Healthy Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: 30 Days",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Platinum",style: TextStyle(color: Colors.white,fontSize: 38, fontWeight: FontWeight.w800),),
                              // Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                              // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                            ],
                          ),
                          //SizedBox(height: 1,),
                          Text("Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: 30 Days",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),),
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage('assets/images/Bg Image.png'),
                      height: 160,
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),),
                    Padding(padding: EdgeInsets.only(left: 20,top: 30,right: 10),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Pro Platinum ",style: TextStyle(color: Colors.white,fontSize: 38, fontWeight: FontWeight.w800),),
                              // Text("Gold ",style: TextStyle(color: Color(0xFFFEB701),fontSize: 28, fontWeight: FontWeight.w600),),
                              // Text("Member",style: TextStyle(color: Colors.white,fontSize: 28, fontWeight: FontWeight.w600),),
                            ],
                          ),
                          //SizedBox(height: 1,),
                          Text("Healthy Vegetarian - Non Vegetarian",style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200,height: 0.7,),),
                          SizedBox(height: 40,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Validity: 30 Days",textAlign:TextAlign.right,style: TextStyle( color: Colors.white,fontSize: 15, fontWeight: FontWeight.w200),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
