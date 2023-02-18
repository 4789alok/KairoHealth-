import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign? align;
  final TextStyle? style;
  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: style,
    );
  }
}
