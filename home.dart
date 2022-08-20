import 'package:flutter/material.dart';
import 'package:college_project/home/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home page',
      home: BottomNav(),
    );
  }
}



