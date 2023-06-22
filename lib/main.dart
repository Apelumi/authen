import 'package:authen/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:authen/constants.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AuthenticationApp',
      theme: ThemeData(
        primaryColor: kPrimarycolor,
        scaffoldBackgroundColor: const Color.fromARGB(255, 250, 249, 249),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: kPrimarycolor,
            shape: const StadiumBorder(),
            maximumSize: Size(double.infinity, 50),
            minimumSize: Size(double.infinity, 50),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor:kPrimarycolor,
          iconColor: kPrimarylightcolor,
          contentPadding: EdgeInsets.symmetric(
            horizontal: ourpadding, vertical: ourpadding
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
        ),
      ),
      home: Welcomescreen(),
    );
  }
}
