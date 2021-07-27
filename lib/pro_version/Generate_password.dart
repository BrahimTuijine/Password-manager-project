import 'dart:ui';

import 'package:flutter/material.dart';

class GeneratePass extends StatefulWidget {
  @override
  _GeneratePassState createState() => _GeneratePassState();
}

class _GeneratePassState extends State<GeneratePass> {
  double currentslidervalue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Generate Password",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 30),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "GENERATED PASSWORD",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 5,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text(
                  "password generated ",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "LENGETH :",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 6,
                // width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${currentslidervalue.round().toString()}",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Slider(
                        inactiveColor: Colors.white,
                        max: 32,
                        value: currentslidervalue,
                        onChanged: (val) {
                          setState(() {
                            currentslidervalue = val;
                          });
                        }),
                    Text(
                      "32",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
