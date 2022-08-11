import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final int rating;
  final String comment;

  ReviewCard({
    required this.name,
    required this.rating,
    required this.comment,
  });
  @override
  Widget build(BuildContext context) {
    var wd = MediaQuery.of(context).size.width;
    var hg = MediaQuery.of(context).size.height;
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
                children: List.generate(
              rating,
              (index) => IconButton(
                icon: Icon(Icons.star, size: 18),
                color: Colors.yellow,
                onPressed: () {},
              ),
            )),
          ),
          SizedBox(
            width: 300,
            child: Text('" $comment "', textAlign: TextAlign.center),
          )
        ],
      ),
      alignment: Alignment.bottomLeft,
    );
  }
}
