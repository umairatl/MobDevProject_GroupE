import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_project/business_logic/bloc/LoginAuth/auth_bloc.dart';

import '../../../Declarations/Constants/constants.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn(
      {Key? key,
      required this.focusNode,
      required this.userName,
      required this.password})
      : super(key: key);

  final FocusNode focusNode;
  final TextEditingController userName;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    const thepurple = Color(0xFF733FF1);
    const theblue = Color(0xff202032);
    const thewhite = Colors.white;
    return Padding(
      padding: kHPadding,
      child: OutlinedButton(
        focusNode: focusNode,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: thepurple, width: 1),
            minimumSize: const Size(double.infinity, 54),
            backgroundColor: theblue),
        onPressed: () {
          BlocProvider.of<AuthBloc>(context)
              .add(Login(userName.text, password.text));
        },
        child: const Text(
          'Login',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: thewhite),
        ),
      ),
    );
  }
}
