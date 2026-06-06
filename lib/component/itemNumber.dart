import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

// the base of the page  screen
class NumberModel extends StatelessWidget {
  const NumberModel({Key? key, required this.all_inImage, required this.coucou})
      : super(key: key);
  final ItemProces all_inImage;
  final Color coucou;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      color: coucou,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF4D9),
            child: Image.asset(
              all_inImage.image,
            ),
          ),
          Expanded(child: ItemInfo(all_inImage: all_inImage))
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key, required this.all_inImage}) : super(key: key);
  final ItemProces all_inImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  all_inImage.textJP,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  all_inImage.textEng,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            )),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () async {
            final player = AudioPlayer();

            await player.setVolume(1.0);

            await player.play(
              AssetSource(all_inImage.sound),
            );
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
