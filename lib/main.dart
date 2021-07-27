import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_manager_project/account/add_account.dart';
import 'package:password_manager_project/auth/login.dart';
import 'package:password_manager_project/auth/signup.dart';
import 'package:password_manager_project/pro_version/Generate_password.dart';
import 'package:password_manager_project/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
          color: Color(0xFFF8F8F8),
        )),
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            color: Color(0xFFF8F8F8),
            fontSize: 20
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF191919),
        primaryColor: Color(0xFFF8F8F8),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff282A2B),
            shape: (RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: GeneratePass(),
      routes: {
        "login": (context) => Signin(),
        "signup": (context) => Signup(),
        "addaccount": (context) => Addaccount(),
        "homescreen": (context) => HomeScreen(),
        "generatepss": (context) => GeneratePass(),
      },
    );
  }
}
