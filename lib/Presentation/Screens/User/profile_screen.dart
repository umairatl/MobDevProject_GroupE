import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_project/details.dart';
import 'package:recipe_project/model/recipe_api.dart';
import 'package:recipe_project/model/recipe_list.dart';
import 'package:recipe_project/navigation/bottomNavBar.dart';

import 'package:recipe_project/widgets/recipe.dart';

import '../User/profile_screen.dart';

class user extends StatefulWidget {
  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.teal, Colors.tealAccent])),
              child: Container(
                width: double.infinity,
                height: 420.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.pinkvilla.com/files/styles/amp_metadata_content_image_min_696px_wide/public/zayn_malik_new_look.jpg?itok=r-t4ySDp",
                        ),
                        radius: 55.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Umairatul Begum",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                      ),
                      Text(
                        "Cyberjaya, Malaysia",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.thumb_up_alt_outlined),
                                    Text(
                                      "Favourites",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "42",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.greenAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.comment_outlined),
                                    Text(
                                      "Reviews",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.greenAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.people_alt_outlined),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "420",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.greenAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "About Me",
                    style: TextStyle(
                        color: Colors.teal,
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'My name is Begum and I love cheffing da tings if you need me to whip out a banger din din, you know who to see',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,
            child: ElevatedButton.icon(
              label: Text('Edit Profile'),
              icon: Icon(Icons.edit),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: FadeInUp(child: BottomNa()),
    );
  }
}
