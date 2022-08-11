import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:recipe_project/navigation/bottomNavBar.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _userState createState() => _userState();
}

class _userState extends State<user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  // ignore: unnecessary_const
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff202032), Color(0xFF733FF1)])),
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
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      const Text(
                        "Cyberjaya, Malaysia",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
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
                                        color: Color(0xff202032),
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
                                        color: Color(0xFF733FF1),
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
                                        color: Color(0xff202032),
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
                                        color: Color(0xFF733FF1),
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
                                        color: Color(0xff202032),
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
                                          color: Color(0xFF733FF1)),
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
                      color: Color(0xff202032),
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
            // child: const DecoratedBox(
            //   decoration: const BoxDecoration(color: Colors.red),
            // ),
          ),
          SizedBox(
            width: 300.00,
            // child: const DecoratedBox(decoration: const BoxDecoration(color: Colors.red),),
            child: ElevatedButton.icon(
              label: const Text('Edit Profile'),
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: FadeInUp(child: const BottomNa()),
    );
  }
}
