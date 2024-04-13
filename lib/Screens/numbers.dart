import 'package:flutter/material.dart';
import 'package:tuko/component/listItemOfScreens.dart';
import 'package:tuko/model/item.dart';

class Numbers extends StatefulWidget {
  const Numbers({super.key});

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    List <item> numberList =[
      item(image: 'assets/images/numbers/number_one.png', title: 'Ichi', subTitle: 'One', sound: 'sounds/numbers/number_one_sound.mp3'),
      item(image: 'assets/images/numbers/number_two.png', title: 'Ni', subTitle: 'Two', sound: 'sounds/numbers/number_two_sound.mp3'),
      item(image: 'assets/images/numbers/number_three.png', title: 'San', subTitle: 'Three', sound: 'sounds/numbers/number_three_sound.mp3'),
      item(image: 'assets/images/numbers/number_four.png', title: 'Shi', subTitle: 'Four', sound: 'sounds/numbers/number_four_sound.mp3'),
      item(image: 'assets/images/numbers/number_five.png', title: 'Go', subTitle: 'Five', sound: 'sounds/numbers/number_five_sound.mp3'),
      item(image: 'assets/images/numbers/number_six.png', title: 'Roku', subTitle: 'Six', sound: 'sounds/numbers/number_six_sound.mp3'),
      item(image: 'assets/images/numbers/number_seven.png', title: 'Nana', subTitle: 'Seven', sound: 'sounds/numbers/number_seven_sound.mp3'),
      item(image: 'assets/images/numbers/number_eight.png', title: 'Hachi', subTitle: 'Eight', sound: 'sounds/numbers/number_eight_sound.mp3'),
      item(image: 'assets/images/numbers/number_nine.png', title: 'Ku', subTitle: 'Nine', sound: 'sounds/numbers/number_nine_sound.mp3'),
      item(image: 'assets/images/numbers/number_ten.png', title: 'Juu', subTitle: 'Ten',sound: 'sounds/numbers/number_ten_sound.mp3'),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFECD097),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xFF3E2723),
        title: const Text('Numbers',style: TextStyle(
            color: Colors.white,
        ),),),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
         return listItem(item1: numberList[index], itemType: 'numbers',);
        },
      ),
    );
  }
}
