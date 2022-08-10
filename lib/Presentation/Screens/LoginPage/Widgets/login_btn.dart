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
    return Padding(
      padding: kHPadding,
      child: OutlinedButton(
        focusNode: focusNode,
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.lightGreenAccent, width: 1),
            minimumSize: const Size(double.infinity, 54),
            backgroundColor: Colors.green[400]),
        onPressed: () {
          BlocProvider.of<AuthBloc>(context)
              .add(Login(userName.text, password.text));
        },
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.limeAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
