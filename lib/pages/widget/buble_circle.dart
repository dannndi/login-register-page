import 'package:flutter/material.dart';

class BubleCircle extends StatelessWidget {
  Color color;
  double size;

  BubleCircle({this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
