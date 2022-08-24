import 'package:flutter/material.dart';
import 'package:tiffin/components/default_button.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';

class Goal extends StatefulWidget {
  static String routeName = "/goals";

  @override
  State<Goal> createState() => _GoalState();
}

class _GoalState extends State<Goal> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Goal",
          style: TextStyle(
            color: Color.fromRGBO(126,131, 137, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Choose your goal',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 15,),
            CheckboxListTile(
              title: Text("Weight Loss"),
              //subtitle: Text("Receive coupons, promotions and money saving offers"),
              secondary: Icon(Icons.fitness_center,
                color: Colors.black,
              ),
                //radius: 20,
              value: this.valuefirst,
              onChanged:(bool? value) {
                setState(() {
                  this.valuefirst = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            CheckboxListTile(
              title: Text("Building Muscle"),
              //subtitle: Text("Receive updates related to your order status,membership and more"),
              secondary: Icon(Icons.line_weight),
              value: this.valuesecond,
              onChanged:(bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            CheckboxListTile(
              title: Text("Weight Maintenamce"),
              //subtitle: Text("Receive updates related to your order status,membership and more"),
              secondary: Icon(Icons.line_weight),
              value: this.valuesecond,
              onChanged:(bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            CheckboxListTile(
              title: Text("Balanced Diet"),
              //subtitle: Text("Receive updates related to your order status,membership and more"),
              secondary: Icon(Icons.line_weight),
              value: this.valuesecond,
              onChanged:(bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            CheckboxListTile(
              title: Text("Healthier Habits"),
              //subtitle: Text("Receive updates related to your order status,membership and more"),
              secondary: Icon(Icons.line_weight),
              value: this.valuesecond,
              onChanged:(bool? value) {
                setState(() {
                  this.valuesecond = value!;
                });
              },
            ),
            Divider(
              color: Color.fromRGBO(126, 131, 137, 0.2),
              thickness: 2,
            ),
            Spacer(),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('Our dietician will contact you regarding your goals.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black,
                  height: .9,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: DefaultButton(
                text: "Proceed to Payment",
                press: (){
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
