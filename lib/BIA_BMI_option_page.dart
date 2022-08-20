import 'package:college_project/BMIcalculator/BMIScreen.dart';
import 'package:college_project/bia_testing.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: Text('Choose your option'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80.0),
            FlatButton(
              padding: EdgeInsets.all(40.0),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BMIHomeScreen())
                );
              },
              color: Colors.cyan[400],
                child: Text('BMI',style: TextStyle(color: Colors.white,fontSize: 40.0)),
            ),
            SizedBox(height: 80.0),
            FlatButton(
              padding: EdgeInsets.all(40.0),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BIAtest())
                );
              },
              color: Colors.cyan[400],
              child: Text('BIA', style: TextStyle(color: Colors.white,fontSize: 40.0),),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.cyan[500],
            //     shape: BoxShape.rectangle,
            //   ),
            //   child: Text('BMI'),
            // )
          ],
        ),
      ),
    );
  }
}
