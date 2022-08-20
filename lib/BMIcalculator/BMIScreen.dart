import 'dart:math';

import 'package:college_project/BMIcalculator/age_weight_widget.dart';
import 'package:college_project/BMIcalculator/gender_widget.dart';
import 'package:college_project/BMIcalculator/height_widget.dart';
import 'package:college_project/home/home.dart';
import 'package:college_project/main.dart';
import 'package:college_project/home/bottom_navigation.dart';
import 'package:flutter/material.dart';


class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({Key? key}) : super(key: key);

  @override
  _BMIHomeScreenState createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
  int _gender = 1;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  double _bmiScore = 0;
  double _bmrScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Column(
                children: [
                  //Lets create widget for gender selection
                  GenderWidget(
                    onChange: (genderVal) {
                      _gender = genderVal;
                    },
                  ),
                  SizedBox(height: 20.0),
                  HeightWidget(
                    onChange: (heightVal) {
                      _height = heightVal;
                    },
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AgeWeightWidget(
                          onChange: (ageVal) {
                            _age = ageVal;
                          },
                          title: "Age",
                          initValue: 30,
                          min: 0,
                          max: 100),
                      AgeWeightWidget(
                          onChange: (weightVal) {
                            _weight = weightVal;
                          },
                          title: "Weight(Kg)",
                          initValue: 50,
                          min: 0,
                          max: 200)
                    ],
                  ),
                  SizedBox(height: 80),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                              onPressed: (){
                               calculateBmi();
                               calculateBmr();
                                print("BMI is: $_bmiScore");
                                print("BMR Score is :$_bmrScore ");
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => HomePage(),
                                )
                               );
                         },
                          color: Colors.green[200],
                          child: Text('Calculate'),
                     ),
                      ),
          )
        ]
      )
    )
  )
)
);
}


  void calculateBmi() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }
  void calculateBmr(){
    if (_gender == 1){
      _bmrScore = 88.362+(13.397 * _weight)+(4.799* _height)-(5.677*_age);
    }
    else {
      _bmrScore = 447.593+(9.247 * _weight)+(3.098* _height)-(4.330*_age);
    }
  }
}