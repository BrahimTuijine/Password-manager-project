import 'package:flutter/material.dart';
import 'package:password_manager_project/auth/signup.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sing In",
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 23),
        ),
        iconTheme: IconThemeData(color: Colors.white),
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
                  style: TextStyle(color: Color(0xffF8F8F8), fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xff505458),
                            ),
                            hintText: "Enter your e-mail",
                            hintStyle: TextStyle(
                              color: Color(0xff505458),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23),
                              borderSide: BorderSide(
                                color: Color(0xff00F7DA),
                              ),
                            ),
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
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff505458),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                                borderSide:
                                    BorderSide(color: Color(0xff00F7DA))),
                            hintText: "Enter your password",
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
                                "if you don't have an account ",
                                style: TextStyle(color: Color(0xffF8F8F8)),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()),
                                    );
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
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("homescreen");
                    },
                    child: Text("Sign In"),
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
