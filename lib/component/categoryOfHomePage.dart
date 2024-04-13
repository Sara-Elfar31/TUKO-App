import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category extends StatelessWidget {
  String? text;
  Color? color;
   category({super.key, this.color,this.text,this.onTap});
   Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          color: color,
          child: Text('$text',style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
