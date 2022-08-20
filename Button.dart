import 'package:college_project/BIA_BMI_option_page.dart';
import 'package:college_project/registrationPage.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          child: RaisedButton(onPressed: (){
            Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Option())
            );
          },
            color: Colors.cyan[400],
            textColor: Colors.white,
            child: Text('Login'),
          ),

        ),
        Container(
          child: RaisedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignIn())
            );
          },
            color: Colors.cyan[400],
            textColor: Colors.white,
            child: Text('Register account'),
          ),
        )
      ],
    );
  }
}