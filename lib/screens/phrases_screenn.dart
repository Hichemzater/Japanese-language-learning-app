import 'package:flutter/material.dart';

import 'package:toku/component/itemPhrases.dart';
import 'package:toku/models/number.dart';

class phrasese_page extends StatelessWidget {
  const phrasese_page({Key? key}) : super(key: key);
  final List<ItemProces> number_ofNumber = const [
    ItemProces(
        image: '',
        textEng: 'don t forget to subscribe',
        textJP: 'Kōdoku suru koto o wasurenaide',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_daughter.png',
        textEng: 'i love programming',
        textJP: 'Watashi wa puroguramingu ga dai',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_grandfather.png',
        textEng: 'programming is easy',
        textJP: 'Puroguramingu wa kantandesu',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_mother.png',
        textEng: 'where are you going ',
        textJP: 'Doko ni iku no',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_grandmother.png',
        textEng: 'what is your name?',
        textJP: 'Namae wa nandesu ka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_older_brother.png',
        textEng: 'i love anime',
        textJP: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_older_sister.png',
        textEng: 'how are you feeling?',
        textJP: 'Go kibun wa ikagadesu ka',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_son.png',
        textEng: 'are you coming?',
        textJP: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemProces(
        image: 'assets/images/family_members/family_younger_sister.png',
        textEng: 'Yes i am coming',
        textJP: 'Hai, watashi wa ikimasu',
        sound: 'sounds/phrases/yes_im_coming.wav'),
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
          return PhrasesChik(all_inImage: number_ofNumber[index]);
        },
      ),
    );
  }
}
