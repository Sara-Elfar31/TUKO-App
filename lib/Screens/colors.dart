import 'package:flutter/material.dart';

import '../component/listItemOfScreens.dart';
import '../model/item.dart';

class colors extends StatefulWidget {
  const colors({super.key});

  @override
  State<colors> createState() => _colorsState();
}

class _colorsState extends State<colors> {
  @override
  Widget build(BuildContext context) {
    List <item> colorList =[
      item(image: 'assets/images/colors/color_black.png', title: 'Kuro', subTitle: 'Black', sound: 'sounds/colors/black.wav'),
      item(image: 'assets/images/colors/color_brown.png', title: 'Cha', subTitle: 'Brown', sound: 'sounds/colors/brown.wav'),
      item(image: 'assets/images/colors/color_dusty_yellow.png', title: 'Kosa', subTitle: 'Dusty_yellow', sound: 'sounds/colors/dusty yellow.wav'),
      item(image: 'assets/images/colors/color_gray.png', title: 'Hai', subTitle: 'Gray', sound: 'sounds/colors/gray.wav'),
      item(image: 'assets/images/colors/color_green.png', title: 'Midori', subTitle: 'Green', sound: 'sounds/colors/green.wav'),
      item(image: 'assets/images/colors/color_red.png', title: 'Aka', subTitle: 'Red', sound: 'sounds/colors/red.wav'),
      item(image: 'assets/images/colors/color_white.png', title: 'Shiro ', subTitle: 'White', sound: 'sounds/colors/white.wav'),
      item(image: 'assets/images/colors/yellow.png', title: 'Ki', subTitle: 'Yellow', sound: 'sounds/colors/yellow.wav'),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFECD097),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xFF3E2723),
        title: const Text('Colors',style: TextStyle(
          color: Colors.white,
        ),),),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return listItem(item1: colorList[index], itemType: 'numbers',);
        },
      ),
    );
  }
}
