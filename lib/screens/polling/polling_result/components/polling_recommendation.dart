import 'package:flutter/material.dart';
import 'package:tiffin/components/custom_bottom_nav_bar.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/components/navigation_drawer.dart';
import 'package:tiffin/constants.dart';
import 'package:tiffin/enums.dart';
import 'package:tiffin/screens/login_success/login_success_screen.dart';

class PollingRecommendation extends StatefulWidget {
  static String routeName = "/polling_recommendation";
  @override
  State<PollingRecommendation> createState() => _PollingRecommendationState();
}
class _PollingRecommendationState extends State<PollingRecommendation> {
  final _formKey = GlobalKey<FormState>();

 String foodTypeValue = 'Select food type';
 String foodCategoryValue = 'Select food category';
 bool isActive = true;
 late TextEditingController controller;
  @override

  void initState(){
    super.initState();
    controller = TextEditingController();
    controller.addListener((){
      final isActive = controller.text.isNotEmpty;
      setState(() => this.isActive = isActive);
    });
  }
   @override
   void dispose(){
    controller.dispose();
    super.dispose();
   }

   void onPressed(){
    if(isActive == true){

    }
   }
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Center(
          child: Image.asset('assets/images/title.png',
            fit: BoxFit.contain,
            //alignment: Alignment.center,
            height: 72,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert,
              color: Colors.redAccent,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.redAccent),
      ),
      body: Container(
        color: Color.fromRGBO(242, 242, 242, 1),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key:_formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Text(
                  'Recommend',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Add your item in the recommended text field, we will try to add these items in the future polls.',
                  style: TextStyle(
                    color: Color.fromRGBO(124, 124, 124, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: foodTypeValue,
                          icon: const Icon(Icons.arrow_drop_down,
                          color:kPrimaryColor,
                        ),
                        iconSize: 36,
                        elevation: 16,
                        isExpanded: true,
                        style: const TextStyle(
                          color: Color.fromRGBO(138, 135, 135, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 18
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            foodTypeValue = newValue!;
                          });
                        },
                        items: <String>['Select food type','Vegetarian', 'Non Vegetarian', 'Healthy Vegetarian', 'Healthy Non Vegetarian'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          //hint: Text('Akshika'),
                          value: foodCategoryValue,
                          icon: const Icon(Icons.arrow_drop_down,
                            color:kPrimaryColor,),
                          iconSize: 36,
                          elevation: 16,
                          isExpanded: true,
                          style: const TextStyle(
                              color: Color.fromRGBO(138, 135, 135, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              foodCategoryValue = newValue!;
                            });
                          },
                          items: <String>['Select food category','Main Course 1', 'Main Course 2', 'Dal', 'Rice','Roti','Dessert']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 5,
                    // keyboardType: TextInputType.emailAddress,
                    // onSaved: (newValue) => email = newValue!,
                    // onChanged: (value){
                    //   if(value.isNotEmpty && errors.contains(kEmailNullError)){
                    //     setState(() {
                    //       errors.remove(kEmailNullError);
                    //     });
                    //   }
                    //   else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
                    //     setState(() {
                    //       errors.remove(kInvalidEmailError);
                    //     });
                    //   }
                    //   return null;
                    // },
                    // validator: (value){
                    //   if(value!.isEmpty && !errors.contains(kEmailNullError)){
                    //     setState(() {
                    //       errors.add(kEmailNullError);
                    //     });
                    //   }
                    //   else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
                    //     setState(() {
                    //       errors.add(kInvalidEmailError);
                    //     });
                    //   }
                    //   return null;
                    // },
                    //textAlign: TextAlign.end,
                    decoration:
                    InputDecoration(
                      filled: true,
                        //icon: Icon(Icons.create),
                      suffixIcon:Icon(Icons.create,
                      color: kPrimaryColor,
                      ),
                        hintTextDirection: TextDirection.rtl,
                        fillColor: Colors.white,
                        hintText: 'Type your food recommendation',
                      hintStyle: TextStyle(
                      ),
                      border: OutlineInputBorder(
                      ),
                    ),
                    controller: controller,
                  ),
                ),

                Spacer(),

                DefaultButton(
                  text: "Continue",
                  press: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      //KeyboardUtil.hideKeyboard(context);
                      Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu:MenuState.home),
      //bottomNavigationBar:
    );
  }
}
