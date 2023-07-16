import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  const YellowButton({
    super.key,
    required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(primary: const Color(0xFFFFA451), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), minimumSize: const Size(200, 60)),
      child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
    );
  }
}
