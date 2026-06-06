import 'package:flutter/material.dart';
import 'package:toku/component/category-item.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family.dart';
import 'package:toku/screens/number_screen.dart';
import 'package:toku/screens/phrases_screenn.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text(
          'Toku Appliction',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Category('Number', Colors.orange, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return itemm_screen(); // itemm_screen hiya sf7a ta3 numbers
            }));
          }),
          Category('Family Members ', Color(0xff528032), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return family_happy(); // itemm_screen hiya sf7a ta3 numbers
            }));
          }),
          Category('Colors ', Color(0xff7D40A2), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return coulor_malor(); // itemm_screen hiya sf7a ta3 numbers
            }));
          }),
          Category('Phrases ', Color(0xff47A5CB), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return phrasese_page(); // itemm_screen hiya sf7a ta3 numbers
            }));
          }),
        ],
      ),
    );
  }
}
