import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_project/navigation/bottomNavBar.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: theblue,
        title: Text("P R O F I L E",
            style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  // ignore: unnecessary_const
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.teal, Colors.tealAccent])),
              child: SizedBox(
                width: double.infinity,
                height: 420.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        // ignore: unnecessary_const
                        backgroundImage: const NetworkImage(
                          "https://www.pinkvilla.com/files/styles/amp_metadata_content_image_min_696px_wide/public/zayn_malik_new_look.jpg?itok=r-t4ySDp",
                        ),
                        radius: 55.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "Umairatul Begum",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                      const Icon(
                        Icons.location_on,
                      ),
                      const Text(
                        "Cyberjaya, Malaysia",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Card(
                        margin: const EdgeInsets.symmetric(
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
                                  children: const <Widget>[
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
                                  children: const <Widget>[
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
                                  children: const <Widget>[
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
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
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
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 300.00,
            child: ElevatedButton.icon(
              label: const Text('Edit Profile'),
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
