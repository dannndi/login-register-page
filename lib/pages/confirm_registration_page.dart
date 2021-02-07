import 'package:flutter/material.dart';
import 'package:login_ui/base_config.dart';
import 'package:login_ui/pages/widget/buble_circle.dart';

class ConfrimationRegistrationPage extends StatefulWidget {
  @override
  _ConfrimationRegistrationPageState createState() =>
      _ConfrimationRegistrationPageState();
}

class _ConfrimationRegistrationPageState
    extends State<ConfrimationRegistrationPage> {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Almost Done",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choose your profile picture !",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: accentColor1,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Freed Nico",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "freednico@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 40,
                      child: RaisedButton(
                        color: primaryColor,
                        onPressed: () {},
                        child: Text(
                          "Confirm Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
