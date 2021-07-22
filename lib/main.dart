import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_manager_project/auth/login.dart';
import 'package:password_manager_project/auth/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(headline1: GoogleFonts.montserrat(
          fontSize: 24.0,
          color: Color(0xFFF8F8F8),
          fontWeight: FontWeight.w500
        )),
        scaffoldBackgroundColor: Color(0xFF191919),
        primaryColor: Color(0xFFF8F8F8),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color(0xff282A2B),
              shape: (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Signin(),
      routes: {
        "login": (context) => Signin(),
        "signup": (context) => Signup(),
      },
    );
  }
}
