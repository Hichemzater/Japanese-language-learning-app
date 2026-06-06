import 'package:flutter/material.dart';
import 'package:toku/component/itemNumber.dart';
import 'package:toku/models/number.dart';

class family_happy extends StatelessWidget {
  const family_happy({Key? key}) : super(key: key);
  final List<ItemProces> number_ofNumber = const [
    ItemProces(
        image: 'assets/images/family_members/family_father.png',
        textEng: 'Father',
        textJP: 'Chichioya',
        sound: 'sounds/family_members/father.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_daughter.png',
        textEng: 'Daughter',
        textJP: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_grandfather.png',
        textEng: 'Grand Father',
        textJP: 'Ojisan',
        sound: 'sounds/family_members/grand father.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_mother.png',
        textEng: 'Mother ',
        textJP: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_grandmother.png',
        textEng: 'Grand mother',
        textJP: 'Sobo',
        sound: 'sounds/family_members/grand mother.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_older_brother.png',
        textEng: 'Older brother',
        textJP: 'Nisan',
        sound: 'sounds/family_members/older bother.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_older_sister.png',
        textEng: 'Older sister ',
        textJP: 'Ane',
        sound: 'sounds/family_members/older sister.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_son.png',
        textEng: 'Son',
        textJP: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_younger_sister.png',
        textEng: 'Younger Sister',
        textJP: 'Imōto',
        sound: 'sounds/family_members/younger sister.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_younger_brother.png',
        textEng: 'Younger Brother',
        textJP: 'Otōto',
        sound: 'sounds/family_members/younger brohter.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          'Family Members',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      // methode two to build
      body: ListView.builder(
        itemCount: number_ofNumber.length,
        itemBuilder: (context, index) {
          return NumberModel(
              coucou: Color(0xff528032), all_inImage: number_ofNumber[index]);
        },
      ),
    );
  }
}
