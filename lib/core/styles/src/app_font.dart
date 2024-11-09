import 'package:flutter/material.dart';

const String fontFamily = 'ReadexPro';


class ParagraphSpacingBox extends StatelessWidget {
  final double h;
  final double w;
  const ParagraphSpacingBox({super.key, required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: h, width: w,);
  }
}