import 'package:flutter/material.dart';

import '../component/listItemOfScreens.dart';
import '../model/item.dart';

class familyMembers extends StatefulWidget {
  const familyMembers({super.key});

  @override
  State<familyMembers> createState() => _familyMembersState();
}

class _familyMembersState extends State<familyMembers> {
  @override
  Widget build(BuildContext context) {
    List <item> familyMemberList =[
      item(image: 'assets/images/family_members/family_father.png', title: 'Chichi', subTitle: 'Father', sound: 'sounds/family_members/father.wav'),
      item(image: 'assets/images/family_members/family_mother.png', title: 'Haha', subTitle: 'Mother', sound: 'sounds/family_members/mother.wav'),
      item(image: 'assets/images/family_members/family_daughter.png', title: 'Musume', subTitle: 'Daughter', sound: 'sounds/family_members/daughter.wav'),
      item(image: 'assets/images/family_members/family_son.png', title: 'Musuko', subTitle: 'Son', sound: 'sounds/family_members/son.wav'),
      item(image: 'assets/images/family_members/family_younger_brother.png', title: 'Otouto', subTitle: 'Younger_brother', sound: 'sounds/family_members/younger brohter.wav'),
      item(image: 'assets/images/family_members/family_younger_sister.png', title: 'Imouto', subTitle: 'Younger_sister', sound: 'sounds/family_members/younger sister.wav'),
      item(image: 'assets/images/family_members/family_older_brother.png', title: 'Ani', subTitle: 'Older_brother', sound: 'sounds/family_members/older bother.wav'),
      item(image: 'assets/images/family_members/family_older_sister.png', title: 'Ane', subTitle: 'Older_sister', sound: 'sounds/family_members/older sister.wav'),
      item(image: 'assets/images/family_members/family_grandfather.png', title: 'Sofu', subTitle: 'Grand_father', sound: 'sounds/family_members/grand father.wav'),
      item(image: 'assets/images/family_members/family_grandmother.png', title: 'Sobo', subTitle: 'Grand_mother',sound: 'sounds/family_members/grand mother.wav'),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFECD097),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: const Color(0xFF3E2723),
        title: const Text('Family Members',style: TextStyle(
          color: Colors.white,
        ),),),
      body: ListView.builder(
        itemCount: familyMemberList.length,
        itemBuilder: (context, index) {
          return listItem(item1: familyMemberList[index], itemType: 'family_members',);
        },
      ),
    );
  }
}
