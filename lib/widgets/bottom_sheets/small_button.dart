import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  const SmallButton({
    super.key,
    required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        padding: const EdgeInsets.all(16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFFFA451)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFFFA451),
            fontSize: 16,
            fontFamily: 'Brandon Grotesque',
            fontWeight: FontWeight.w500,
            letterSpacing: -0.16,
          ),
        ),
      ),
    );
  }
}
