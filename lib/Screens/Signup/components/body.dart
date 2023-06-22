import 'package:authen/Screens/Login/login_screen.dart';
import 'package:authen/Screens/Signup/components/background.dart';
import 'package:authen/Screens/Signup/components/or_divider.dart';
import 'package:authen/Screens/Signup/components/social_icons.dart';
import 'package:authen/components/already_have_anaccount_check.dart';
import 'package:authen/components/rounded_button.dart';
import 'package:authen/components/rounded_input_datafield.dart';
import 'package:authen/components/rounded_password_field.dart';
import 'package:authen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "SIGN UP PAGE BY YEF",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        SvgPicture.asset(
          "assets/icons/signup.svg",
          width: size.width * 0.35,
          height: size.height * 0.30,
        ),
        RoundedInputfield(
        hintText: "Enter your first name", onChanges: (value) {}),
        RoundedInputfield(hintText: "Enter your email", onChanges: (value) {}),
        Roundedpasswordfield(onChanges: (value) {}),
        RoundedButton(text: "SIGN UP NOW!", press: () {}),
        AlreadyhaveanAccountchecks(
          login: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
        ),
        OrDivider(),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconsrc: "assets/icons/facebook.svg", 
                pressit: (){}, 
              ),
              SocialIcon(
                iconsrc: "assets/icons/twitter.svg", 
                pressit: (){}, 
              ),
              SocialIcon(
                iconsrc: "assets/icons/google-plus.svg", 
                pressit: (){}, 
              )
            ],
          ),
        )
      ],
    ));
  }
}

