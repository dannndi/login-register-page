import 'package:flutter/material.dart';
import 'package:login_ui/base_config.dart';
import 'package:login_ui/pages/login_page.dart';
import 'package:login_ui/pages/widget/buble_circle.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          // Background
          Positioned(
            top: -40,
            right: 60,
            child: BubleCircle(
              color: secondaryColor.withOpacity(0.7),
              size: 250,
            ),
          ),
          Positioned(
            top: -50,
            right: -40,
            child: BubleCircle(
              color: accentColor1.withOpacity(0.7),
              size: 200,
            ),
          ),
          Positioned(
            bottom: -100,
            left: -100,
            child: BubleCircle(
              color: accentColor2.withOpacity(0.7),
              size: 220,
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Whiley",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Car Shop and Rental",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
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
