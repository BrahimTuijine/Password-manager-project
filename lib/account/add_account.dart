import 'package:flutter/material.dart';

class Addaccount extends StatefulWidget {
  @override
  _AddaccountState createState() => _AddaccountState();
}

class _AddaccountState extends State<Addaccount> {
  List list = [
    "Social",
    "Social",
    "Social",
    "Social",
    "Social",
    "Social",
    "Social",
    "Social",
    "Social",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.highlight_off,
              color: Colors.red,
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
                  color: Colors.green,
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
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WEBSITE",
                      style: TextStyle(
                        color: Color(0xff505458),
                        fontSize: 17,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff505458),
                          ),
                          border: InputBorder.none,
                          hintText: "www.facebook.com",
                          hintStyle: TextStyle(color: Color(0xff505458))),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Divider(
                        height: 5,
                        color: Color(0xff505458),
                      ),
                    ),
                    Text(
                      "EMAIL/USERNAME",
                      style: TextStyle(
                        color: Color(0xff505458),
                        fontSize: 17,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "www.facebook.com",
                        hintStyle: TextStyle(
                          color: Color(0xff505458),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Divider(
                        height: 5,
                        color: Color(0xff505458),
                      ),
                    ),
                    Text(
                      "PASSWORD",
                      style: TextStyle(
                        color: Color(0xff505458),
                        fontSize: 17,
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "www.facebook.com",
                          hintStyle: TextStyle(color: Color(0xff505458))),
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
                      height: 45,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Generate a Password"),
                      ),
                    ),
                    Text(
                      "NOTE",
                      style: TextStyle(
                        color: Color(0xff505458),
                        fontSize: 17,
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "www.facebook.com",
                        hintStyle: TextStyle(
                          color: Color(0xff505458),
                        ),
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
                    // Wrap(
                    //   children: [
                    //     ListView.builder(
                    //       shrinkWrap: true,
                    //       physics: NeverScrollableScrollPhysics(),
                    //       itemCount: list.length,
                    //       itemBuilder: (BuildContext context, int index) {
                    //         return ElevatedButton(
                    //             onPressed: () {},
                    //             child: Text("${list[index]}"));
                    //       },
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
