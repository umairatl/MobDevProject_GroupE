import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'YUMLYY ',
        style:  TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20.00,
             fontWeight: FontWeight.bold,
             color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: message,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.00,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
