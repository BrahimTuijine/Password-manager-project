import 'package:flutter/material.dart';

class Addaccount extends StatefulWidget {
  @override
  _AddaccountState createState() => _AddaccountState();
}

class _AddaccountState extends State<Addaccount> {
  List _taglist = [
    {'tagname': 'Social', 'selected': false},
    {'tagname': 'Master Password', 'selected': false},
    {'tagname': 'Bank', 'selected': false},
    {'tagname': 'Bills', 'selected': false},
    {'tagname': 'Personal', 'selected': false},
    {'tagname': 'Shopping', 'selected': false},
  ];

  // { tagname : 'Scical', selected : true }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
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
                            onPressed: () {
                              Navigator.of(context).pushNamed("generatepss");
                            },
                            child: Text("Generate a Password"),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
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
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF242627),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Padding(
                            padding: const EdgeInsets.all(17),
                            child: Text(
                              _taglist[i].toString(),
                              style: TextStyle(
                                color: Colors.white,
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



class Tags{

}


/**
 *  table accounts : 
 * 
 *   website:facebook,
 *   email:bilelmerseni7016@gmail.com,
 *   password:bilel001,
 *   note:bla bla bla bla
 * 
 * 
 * 
 * table tags
 *  tagid : 1
 *  tagname : social
 * 
 * 
 * 
 */