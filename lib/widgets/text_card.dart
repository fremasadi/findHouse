import 'package:flutter/material.dart';
import 'package:findhouse/theme.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    required this.label,
    required this.fontSize,
    required this.textStyle,
  });

  final String label;
  final double fontSize;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: edge),
      child: Text(
        label,
        style: textStyle.copyWith(fontSize: fontSize),
      ),
    );
  }
}
