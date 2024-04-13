import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuko/model/item.dart';

class listItem extends StatelessWidget {

  listItem({required this.item1, required this.itemType});
  final item item1 ;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item1.image),
      title: Text(item1.title),
      subtitle: Text(item1.subTitle),
      trailing:IconButton(onPressed:() {
        final player = AudioPlayer();
        player.play(AssetSource(item1.sound));
      }, icon: const Icon(Icons.play_arrow)),
    );
  }
}
