import 'package:authen/constants.dart';
import 'package:flutter/material.dart';

class Textfieldcontainer extends StatelessWidget {
  final Widget child;
  const Textfieldcontainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimarylightcolor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}