import 'dart:ui';

import 'package:flutter/material.dart';

class GeneratePass extends StatefulWidget {
  @override
  _GeneratePassState createState() => _GeneratePassState();
}

class _GeneratePassState extends State<GeneratePass> {
  double currentslidervalue = 8.0;
  bool switchvalueone = false;
  bool switchvaluetwo = false;
  bool switchvaluethree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF191919),
        title: Text(
          "Generate Password",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "GENERATED PASSWORD :",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 5.5,
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
                        min: 8.0,
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
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                child: Text(
                  "SETTING :",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 6.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Include numbers ",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        value: switchvalueone,
                        onChanged: (val) {
                          setState(() {
                            switchvalueone = val;
                          });
                        }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 6.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Include letters ",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        value: switchvaluetwo,
                        onChanged: (valtwo) {
                          setState(() {
                            switchvaluetwo = valtwo;
                          });
                        }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Color(0xff282A2B),
                height: MediaQuery.of(context).size.width / 6.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Include symbols ",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Switch(
                        activeColor: Colors.white,
                        value: switchvaluethree,
                        onChanged: (valthree) {
                          setState(() {
                            switchvaluethree = valthree;
                          });
                        }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                height: MediaQuery.of(context).size.width / 6.4,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("GENERATE PASSWORD"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
