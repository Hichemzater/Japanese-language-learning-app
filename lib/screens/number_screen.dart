import 'package:flutter/material.dart';
import 'package:toku/component/itemNumber.dart';
import 'package:toku/models/number.dart';

// principal page screen
class itemm_screen extends StatelessWidget {
  //NUmber houwa ism
  const itemm_screen({Key? key}) : super(key: key);
  final List<ItemProces> number_ofNumber = const [
    ItemProces(
        image: 'assets/images/numbers/number_one.png',
        textEng: 'One',
        textJP: 'Ichi',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_two.png',
        textEng: 'Two',
        textJP: 'Ni',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_three.png',
        textEng: 'Three',
        textJP: 'San',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_four.png',
        textEng: 'Four',
        textJP: 'Shi',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_five.png',
        textEng: 'Five',
        textJP: 'Go',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_six.png',
        textEng: 'Six',
        textJP: 'Roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_seven.png',
        textEng: 'Seven',
        textJP: 'Sebun',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_eight.png',
        textEng: 'Eight',
        textJP: 'Hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_nine.png',
        textEng: 'Nine',
        textJP: 'Kyū',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemProces(
        image: 'assets/images/numbers/number_ten.png',
        textEng: 'Ten',
        textJP: 'Jū',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'Number',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      // methode two to build
      body: ListView.builder(
        itemCount: number_ofNumber.length,
        itemBuilder: (context, index) {
          return NumberModel(
              coucou: Colors.orange, all_inImage: number_ofNumber[index]);
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
