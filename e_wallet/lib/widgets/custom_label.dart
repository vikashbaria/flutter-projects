import 'package:flutter/material.dart';

class CustomeLable extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomeLable({
    super.key,
    required this.text,
    this.fontSize = 12.8,
    this.fontWeight = FontWeight.w700,
    this.color = const Color(0xFF3A3F4B),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
