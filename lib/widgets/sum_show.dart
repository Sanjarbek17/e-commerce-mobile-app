// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SumShow extends StatelessWidget {
  final Text text;
  final Color? iconColor;
  final double? iconWidth;
  final double? iconHeight;
  const SumShow({
    super.key,
    required this.text,
    this.iconColor,
    this.iconWidth,
    this.iconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset('assets/svg/none.svg', color: iconColor, height: iconHeight, width: iconWidth),
        const SizedBox(width: 4),
        text,
      ],
    );
  }
}
