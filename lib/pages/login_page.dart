import 'package:flutter/material.dart';
import 'package:login_ui/base_config.dart';
import 'package:login_ui/pages/register_page.dart';
import 'package:login_ui/pages/widget/buble_circle.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Positioned(
            top: -70,
            left: -70,
            child: BubleCircle(
              size: 160,
              color: secondaryColor.withOpacity(0.7),
            ),
          ),
          Positioned(
            bottom: -70,
            right: -70,
            child: BubleCircle(
              size: 160,
              color: accentColor2.withOpacity(0.7),
            ),
          ),
          // Content
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100, bottom: 40),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Forgot password ?"),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  child: RaisedButton(
                    color: primaryColor,
                    onPressed: () {},
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don\'t have an Account ?"),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Register now !",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "or Log in with Google",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
