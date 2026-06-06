import 'package:flutter/material.dart';
import 'package:toku/component/itemNumber.dart';
import 'package:toku/models/number.dart';

// principal page screen
class coulor_malor extends StatelessWidget {
  //NUmber houwa ism
  const coulor_malor({Key? key}) : super(key: key);
  final List<ItemProces> number_ofNumber = const [
    ItemProces(
        image: 'assets/images/colors/color_black.png',
        textEng: 'Black',
        textJP: 'Kuro',
        sound: 'sounds/colors/black.wav'),
    ItemProces(
        image: 'assets/images/colors/color_brown.png',
        textEng: 'Brown',
        textJP: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    ItemProces(
        image: 'assets/images/colors/color_dusty_yellow.png',
        textEng: ' dusty yellow',
        textJP: ' Kusunda Kiiro',
        sound: 'sounds/colors/dusty yellow.wav'),
    ItemProces(
        image: 'assets/images/colors/color_gray.png',
        textEng: 'Gray',
        textJP: 'Haiiro',
        sound: 'sounds/colors/gray.wav'),
    ItemProces(
        image: 'assets/images/colors/color_red.png',
        textEng: 'red',
        textJP: 'Aka',
        sound: 'sounds/colors/red.wav'),
    ItemProces(
        image: 'assets/images/colors/color_green.png',
        textEng: 'Green',
        textJP: 'Midori',
        sound: 'sounds/colors/green.wav'),
    ItemProces(
        image: 'assets/images/colors/color_white.png',
        textEng: 'White',
        textJP: 'Shiro',
        sound: 'sounds/colors/white.wav'),
    ItemProces(
        image: 'assets/images/colors/yellow.png',
        textEng: 'Yellow',
        textJP: 'Kiiro',
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      // methode two to build
      body: ListView.builder(
        itemCount: number_ofNumber.length,
        itemBuilder: (context, index) {
          return NumberModel(
              coucou: Color(0xff7D40A2), all_inImage: number_ofNumber[index]);
        },
      ),
    );
  }
}
// methode one to build
// List<Widget> getList(List<Number> numbers) {
//   //
//   List<Widget> itemList = [];
//   for (var i = 0; i < numbers.length; i++) {
//     itemList.add(NumberModel(all_inImage: numbers[i]));
//   }
//   return itemList;
// }
