import 'package:college_project/home/activity.dart';
import 'package:college_project/home/blog.dart';
import 'package:college_project/home/home.dart';
import 'package:college_project/home/meal.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex=0;
  List<Widget> widgetList = const [
    ActivityTracker(),
    MealTracker(),
    Blog(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_food_beverage),
          label: 'Meal',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Health Blog',
        ),

      ],),
    );
  }
}
