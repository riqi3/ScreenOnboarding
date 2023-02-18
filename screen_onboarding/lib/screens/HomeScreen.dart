import 'package:flutter/material.dart';
import 'package:screen_onboarding/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HOMEPAGE',
        style: TextStyle(fontSize: 30, color: mainColor),),
      ),
    );
  }
}