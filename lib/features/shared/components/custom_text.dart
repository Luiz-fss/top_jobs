import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  const CustomText({super.key, required this.text,this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          fontSize: 150
      ),
    );
  }
}
