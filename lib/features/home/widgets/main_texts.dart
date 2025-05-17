import 'package:flutter/material.dart';

class MainTexts extends StatelessWidget {
  const MainTexts({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.size,
  });

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Text(
        text,
        style: TextStyle(overflow: TextOverflow.ellipsis,color: color, fontWeight: fontWeight, fontSize: size),
      ),
    );
  }
}
