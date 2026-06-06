import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.text, this.color ,this.onTap);
  String text;
  Color color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 85,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}













