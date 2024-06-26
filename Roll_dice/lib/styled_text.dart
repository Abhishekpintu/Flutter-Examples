import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Text(
      text,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1),
    );
  }
}