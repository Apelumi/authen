import 'package:authen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconsrc;
  final void Function()? pressit;
  const SocialIcon({
    super.key,
    required this.iconsrc,
    this.pressit,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: pressit,
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: size.height * 0.001, horizontal: 10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimarycolor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconsrc,
          width: 15,
          height: 15,
        ),
      ),
    );
  }
}
