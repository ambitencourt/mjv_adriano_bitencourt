import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const TextWidget(
    this.data, {
    super.key,
    this.fontSize = 14,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
