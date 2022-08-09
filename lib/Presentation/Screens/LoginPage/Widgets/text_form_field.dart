import 'package:flutter/material.dart';

import '../../../Declarations/Constants/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.focusNode,
    required this.textController,
    required this.label,
    required this.icons,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController textController;
  final String label;
  final Icon icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHPadding,
      child: TextFormField(
        obscureText: label == "Password" ? true : false,
        controller: textController,
        autofocus: false,
        onFieldSubmitted: (value) {
          FocusScope.of(context).requestFocus(focusNode);
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: kBorderRadius),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.green),
                borderRadius: kBorderRadius),
            hintStyle: const TextStyle(color: Colors.green),
            filled: true,
            fillColor: Colors.white,
            hintText: label,
            prefixIcon: icons),
      ),
    );
  }
}
