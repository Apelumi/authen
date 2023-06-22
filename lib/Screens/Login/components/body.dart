import 'package:authen/Screens/Login/components/background.dart';
import 'package:authen/Screens/Signup/sign_up.dart';
import 'package:authen/components/already_have_anaccount_check.dart';
import 'package:authen/components/rounded_input_datafield.dart';
import 'package:authen/components/rounded_password_field.dart';
import 'package:authen/components/text_field_container.dart';
import 'package:authen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:authen/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN TO YOUR ACCOUNT",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03,),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03,),
          RoundedInputfield(
            hintText: "Enter Your Email",
            onChanges: (value) {
              print("none_yet");
            },
          ),
          Roundedpasswordfield(
            onChanges: (value) {
              print("none_yet");
            },
          ),
          RoundedButton(text: "LOGIN NOW!", press: () {}),
          SizedBox(height: size.height * 0.02,),
          AlreadyhaveanAccountchecks(
            press: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context)
                    {return Signup_now();
                  },
                ),
              );
            }
          )
        ],
      ),
    );
  }
}
