import 'package:authen/constants.dart';
import 'package:flutter/material.dart';

class AlreadyhaveanAccountchecks extends StatelessWidget {
  final bool login;
  final void Function()? press;
  const AlreadyhaveanAccountchecks({
    super.key, 
    this.login = true, 
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login? "Don't have an account yet?": "Already have an acount",
          style: TextStyle(color: kPrimarycolor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login? "Sign_up": "Sign_In",
            style: TextStyle(color: kPrimarycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
