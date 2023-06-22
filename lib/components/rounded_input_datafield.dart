import 'package:authen/components/text_field_container.dart';
import 'package:authen/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputfield extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanges;
  const RoundedInputfield({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanges,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Textfieldcontainer(
      child: TextField(
        onChanged: onChanges,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: kPrimarycolor,
            ),
            filled: true,
            fillColor: kPrimarylightcolor,
            border: InputBorder.none),
      ),
    );
  }
}