import 'package:flutter/material.dart';
import 'package:tuko/Screens/FamilyMembers.dart';
import 'package:tuko/Screens/colors.dart';
import 'package:tuko/Screens/phrases.dart';
import 'package:tuko/component/categoryOfHomePage.dart';

import 'numbers.dart';

class TukoApp extends StatefulWidget {
  const TukoApp({super.key});

  @override
  State<TukoApp> createState() => _TukoAppState();
}

class _TukoAppState extends State<TukoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFF8E1),
        appBar: AppBar(backgroundColor: const Color(0xFF3E2723),
          title: const Text('Tuko App',style: TextStyle(
            color: Colors.white
          ),),),
      body: Column(
        children: [
           category(color: Colors.green,text: 'Numbers',
             onTap:() {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Numbers();
               },));
             },),
          category(color: Colors.orange,text: 'Family Members',
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familyMembers();
              },));
            },),
          category(color: Colors.red,text: 'Colors',
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return colors();
              },));
            },),
          category(color: Colors.indigoAccent,text: 'Phrases',
            onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return phrases();
            },));
          },)
        ],
      ),
    );
  }
}
