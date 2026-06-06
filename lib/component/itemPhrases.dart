import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class PhrasesChik extends StatelessWidget {
  const PhrasesChik({Key? key, required this.all_inImage}) : super(key: key);
  final ItemProces all_inImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff47A5CB),
      height: 100,
      child: Row(
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
      ),
    );
  }
}
