import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuko/model/phraseItem.dart';

class phraseModel extends StatelessWidget {
  final phrasesItem phrase ;
  const phraseModel({super.key, required this.phrase});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phrase.title),
      subtitle: Text(phrase.subTitle),
      trailing:IconButton(onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(phrase.sound));
      }, icon: Icon(Icons.play_arrow)),
    );
  }
}
