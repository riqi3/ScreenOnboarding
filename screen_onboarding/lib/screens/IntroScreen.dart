import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:screen_onboarding/constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          HeroImage(),
          HeroImage(),
          HeroImage(),
        ],
        onDone: () {
          Navigator.pushNamed(context, 'home');
        },
        onSkip: () {
          Navigator.pushNamed(context, 'home');
        },
        showSkipButton: true,
        skip: Text(
          'Skip',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: mainColor),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: mainColor,
          size: 30,
        ),
        done: Text(
          'Done',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: mainColor),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 10.0),
          color: Colors.black54,
          activeColor: mainColor,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }

  PageViewModel HeroImage() {
    final String title, image;
    return PageViewModel(
      titleWidget: Text(
        'Title Page',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fermentum egestas augue, et vehicula justo interdum venenatis.',
      image: Image.asset(
        'assets/images/1.png',
        height: 400,
        width: 400,
      ),
    );
  }
}
