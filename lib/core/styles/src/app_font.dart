import 'package:flutter/material.dart';

const String fontFamily = 'ReadexPro';

const double paragraphSpacing = 10.0;

class ParagraphSpacingBox extends StatelessWidget {
  const ParagraphSpacingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: paragraphSpacing, width: paragraphSpacing,);
  }
}