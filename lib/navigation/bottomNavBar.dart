// ignore_for_file: constant_identifier_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:recipe_project/Presentation/Screens/Home/homepage.dart';

enum BottomItems { Home, Saved, User }

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

  void navigateToSaved() {
    Navigator.pushNamed(
      context,
      '/saved',
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
                  Navigator.pushNamed(context, '/homepage');
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
                selectedItems = BottomItems.Saved;
                Navigator.pushNamed(context, '/saved');
              });
            },
            child: selectedItems == BottomItems.Saved
                ? isActiveWidget("Saved")
                : const Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.grey,
                  ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedItems = BottomItems.User;
                Navigator.pushNamed(context, '/user');
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeIn(
          delay: const Duration(milliseconds: 100),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
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
                color: Color(0xFF733FF1),
                backgroundColor: Color(0xff202032),
              )),
        )
      ],
    );
  }
}
