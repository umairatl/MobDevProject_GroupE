import 'package:flutter/material.dart';

import '../../../Components/spacers.dart';
import '../../../Declarations/Constants/constants.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildBtn("Sign In", Colors.blue, Icons.facebook_sharp),
        const WidthSpacer(myWidth: 15.5),
        buildBtn("Sign In", Colors.orange, Icons.mail)
      ],
    );
  }

  Widget buildBtn(String text, Color btnColor, IconData iconData) => Container(
        width: 140,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          color: btnColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            const WidthSpacer(myWidth: 7.00),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      );
}
