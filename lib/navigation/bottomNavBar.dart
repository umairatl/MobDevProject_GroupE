// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:recipe_project/Presentation/Screens/Explore/explore.dart';
import 'package:recipe_project/Presentation/Screens/Home/homepage.dart';
import 'package:animate_do/animate_do.dart';
import 'package:recipe_project/Presentation/Screens/User/profile_screen.dart';

enum BottomItems { Home, Explore, User }

class BottomNa extends StatefulWidget {
  const BottomNa({Key? key}) : super(key: key);

  @override
  _BottomNaState createState() => _BottomNaState();
}

class _BottomNaState extends State<BottomNa> {
  BottomItems selectedItems = BottomItems.Home;

  void navigateToHome() {
    Navigator.pushNamed(
      context,
      '/homepage',
    );
  }

  void navigateToExplore() {
    Navigator.pushNamed(
      context,
      '/explore',
    );
  }

  void navigateToUser() {
    Navigator.pushNamed(
      context,
      '/user',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xff202032)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(
                () {
                  selectedItems = BottomItems.Home;
                  Future.delayed(const Duration(milliseconds: 500), () {
                    Navigator.popAndPushNamed(context, '/homepage');
                  });
                },
              );
            },
            child: selectedItems == BottomItems.Home
                ? isActiveWidget("Home")
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItems = BottomItems.Explore;
                Future.delayed(const Duration(milliseconds: 800), () {
                  Navigator.pushNamed(context, '/explore');
                });
              });
            },
            child: selectedItems == BottomItems.Explore
                ? isActiveWidget("Explore")
                : const Icon(
                    Icons.explore_outlined,
                    color: Colors.grey,
                  ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItems = BottomItems.User;
                Future.delayed(const Duration(milliseconds: 800), () {
                  Navigator.pushNamed(context, '/user');
                });
              });
            },
            child: selectedItems == BottomItems.User
                ? isActiveWidget("User")
                : const Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
          ),
        ],
      ),
    );
  }

  Widget isActiveWidget(String title) {
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeIn(
          delay: const Duration(milliseconds: 100),
          child: Text(
            title,
            style: const TextStyle(color: thewhite),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        FadeInLeft(
          from: 15,
          child: const SizedBox(
              height: 3,
              width: 30,
              child: LinearProgressIndicator(
                minHeight: 10,
                value: 1,
                color: thepurple,
                backgroundColor: theblue,
              )),
        )
      ],
    );
  }
}
