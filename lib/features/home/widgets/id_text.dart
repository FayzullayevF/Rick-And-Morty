import 'package:flutter/material.dart';

class IdText extends StatelessWidget {
  const IdText({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.size,
  });

  final int text;
  final Color color;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${text}. ",
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
    );
  }
}
