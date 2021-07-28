import 'package:flutter/material.dart';
import 'package:password_manager_project/models/tag_model.dart';

class Addaccount extends StatefulWidget {
  @override
  _AddaccountState createState() => _AddaccountState();
}

class _AddaccountState extends State<Addaccount> {
  List<Tags> _taglist = [
    Tags(1, 'Social'),
    Tags(5, 'Personal'),
  ];

  // { tagname : 'Scical', selected : true }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.highlight_off,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_circle_outline_outlined,
                  color: Color(0xff00F7DA),
                  size: 30,
                ),
              ),
            ),
          ],
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Add a Password',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: "WEBSITE",
                            labelStyle: TextStyle(
                              color: Color(0xff505458),
                              fontSize: 17,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Divider(
                            height: 5,
                            color: Color(0xff505458),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: "EMAIL/USERNAME",
                            labelStyle: TextStyle(
                              color: Color(0xff505458),
                              fontSize: 17,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Divider(
                            height: 5,
                            color: Color(0xff505458),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: "PASSWORD",
                            labelStyle: TextStyle(
                              color: Color(0xff505458),
                              fontSize: 17,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            height: 5,
                            color: Color(0xff505458),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Generate a Password"),
                          ),
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: "NOTE",
                            labelStyle: TextStyle(
                              color: Color(0xff505458),
                              fontSize: 17,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Divider(
                            height: 5,
                            color: Color(0xff505458),
                          ),
                        ),
                        Text(
                          "TAGS",
                          style: TextStyle(
                            color: Color(0xff505458),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: [
                      for (var i = 0; i < _taglist.length; i++)
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF242627),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          margin: EdgeInsets.all(4),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              _taglist[i].tagName,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () {
                          print('pressed');
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFF242627),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          margin: EdgeInsets.all(4),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
