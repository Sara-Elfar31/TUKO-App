import 'package:flutter/material.dart';
import 'package:tuko/model/item.dart';
import 'package:tuko/model/phraseItem.dart';
import 'package:tuko/model/phrasemodel.dart';

import '../component/listItemOfScreens.dart';

class phrases extends StatefulWidget {
  const phrases({super.key});

  @override
  State<phrases> createState() => _phrasesState();
}

class _phrasesState extends State<phrases> {
  @override
  Widget build(BuildContext context) {
     List<phrasesItem> phrasesList = [
       phrasesItem(title: 'Kōdoku suru koto o ', subTitle: 'Dont forget to subscribe', sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
       phrasesItem(title: 'Watashi wa puroguramingu', subTitle: 'I love  programming', sound: 'sounds/phrases/i_love_programming.wav'),
       phrasesItem(title: 'Puroguramingu wa kantandesu', subTitle: 'Programming is easy', sound: 'sounds/phrases/programming_is_easy.wav'),
       phrasesItem(title: 'Doko ni iku no', subTitle: 'Where are you going', sound: 'sounds/phrases/where_are_you_going.wav'),
       phrasesItem(title: 'Namae wa nandesu ka', subTitle: 'What is your name ?', sound: 'sounds/phrases/what_is_your_name.wav'),
       phrasesItem(title: 'Watashi wa anime ga daisukidesu', subTitle: 'I love anime', sound: 'sounds/phrases/i_love_anime.wav'),
       phrasesItem(title: 'Go kibun wa ikagadesu ka', subTitle: 'How are you feeling?', sound: 'sounds/phrases/how_are_you_feeling.wav'),
       phrasesItem(title: 'Kimasu ka', subTitle: 'Are you coming?', sound: 'sounds/phrases/are_you_coming.wav'),
       phrasesItem(title: 'Hai watashi wa kite imasu', subTitle: 'Yes i am coming', sound: 'sounds/phrases/yes_im_coming.wav'),
     ];
    return Scaffold(
      backgroundColor: const Color(0xFFECD097),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xFF3E2723),
        title: const Text('Phrases',style: TextStyle(
          color: Colors.white,
        ),),),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return phraseModel(phrase: phrasesList[index]);
        },
      ),
    );
  }
}
