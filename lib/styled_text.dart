import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});

  final String text; //no changes after receiving the value

  @override
  Widget build(context){
    return Text(
              text,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white
                )
              );
  }
}