// import 'package:flutter/material.dart';

// class ReviewCard extends StatelessWidget {
//   final String name;
//   final int rating;
//   final String comment;

//   ReviewCard({
//     required this.name,
//     required this.rating,
//     required this.comment,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
//       width: MediaQuery.of(context).size.width,
//       height: 180,
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.6),
//             offset: Offset(
//               0.0,
//               10.0,
//             ),
//             blurRadius: 10.0,
//             spreadRadius: -6.0,
//           ),
//         ],
//       ),
//       child: Stack(
//         children: [
//           Align(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 5.0),
//               child: Text(
//                 rating.toString(),
//                 style: TextStyle(
//                   fontSize: 19,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 2,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             alignment: Alignment.center,
//           ),
//           Align(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.4),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       SizedBox(width: 7),
//                       Text(rating.toString()),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.4),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.schedule,
//                         color: Colors.yellow,
//                         size: 18,
//                       ),
//                       SizedBox(width: 7),
//                       Text(rating.toString()),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             alignment: Alignment.bottomLeft,
//           ),
//         ],
//       ),
//     );
//   }
// }
