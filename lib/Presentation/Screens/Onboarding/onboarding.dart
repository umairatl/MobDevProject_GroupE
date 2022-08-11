import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:recipe_project/Presentation/Screens/Home/homepage.dart';

class Onboarding extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/Loginpage/cooking.png",
      title: "Share the Joyous",
      desc: "Come cook with your loved ones!",
    ),
    OnbordingData(
      imagePath: "assets/images/Loginpage/chef.png",
      title: "Be a Chef",
      desc: "Explore the recipes with us and Be your own chef!",
    ),
    OnbordingData(
      imagePath: "assets/images/Loginpage/chef-start.png",
      title: "Let's Start!",
      desc: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new IntroScreen(
      list,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }
}
