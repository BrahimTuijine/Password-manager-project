import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sing Up",
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: 25,
                            width: 25,
                            image: AssetImage(
                              'assets/images/facebook.png',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("continue with Facebook")
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Image(
                          height: 25,
                          width: 25,
                          image: AssetImage(
                            'assets/images/google.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("continue with Google"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "or",
                  style: TextStyle(color: Color(0xffF8F8F8)),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.verified_user_sharp,
                              color: Color(0xff505458),
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Color(0xff505458)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide:
                                    BorderSide(color: Color(0xff00F7DA))),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                              borderSide: BorderSide(color: Colors.cyan),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xff505458),
                            ),
                            hintText: "E-mail",
                            hintStyle: TextStyle(color: Color(0xff505458)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide:
                                    BorderSide(color: Color(0xff00F7DA))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide: BorderSide(color: Colors.cyan)),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff505458),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide:
                                    BorderSide(color: Color(0xff00F7DA))),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xff505458)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide:
                                    BorderSide(color: Color(0xff00F7DA))),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text(
                                "if you have an account ",
                                style: TextStyle(color: Color(0xffF8F8F8)),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed("login");
                                  },
                                  child: Text("Click Here"))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
