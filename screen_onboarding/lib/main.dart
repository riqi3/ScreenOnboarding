import 'package:flutter/material.dart';

import 'screens/HomeScreen.dart';
import 'screens/IntroScreen.dart';

void main() => runApp(OnboardScreen());

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/' : (context) => IntroScreen(),
        'home' : (context) => HomeScreen(),
      },
    );
  }
}
