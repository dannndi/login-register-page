import 'package:flutter/material.dart';
import 'package:login_ui/pages/confirm_registration_page.dart';
import 'package:login_ui/pages/widget/buble_circle.dart';

import '../base_config.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background,
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
                  margin: EdgeInsets.only(top: 100),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Fill about your self",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                  ),
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  child: OutlineButton(
                    borderSide: BorderSide(color: primaryColor),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConfrimationRegistrationPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: primaryColor,
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
