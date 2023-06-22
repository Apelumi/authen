import 'package:authen/components/text_field_container.dart';
import 'package:authen/constants.dart';
import 'package:flutter/material.dart';

class Roundedpasswordfield extends StatelessWidget {
  final ValueChanged<String> onChanges;
  const Roundedpasswordfield({
    super.key,
    required this.onChanges,
  });

  @override
  Widget build(BuildContext context) {
    return Textfieldcontainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanges,
      decoration: InputDecoration(
          hintText: "Enter Your Password",
          icon: Icon(
            Icons.lock,
            color: kPrimarycolor,
          ),
          filled: true,
          fillColor: kPrimarylightcolor,
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimarycolor,
          ),
          border: InputBorder.none),
    ));
  }
}
