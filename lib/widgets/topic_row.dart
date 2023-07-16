
import 'package:flutter/material.dart';

class TopicRow extends StatelessWidget {
  const TopicRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <TopicButton>[
        TopicButton(text: 'Hottest', isActive: true),
        TopicButton(text: 'Popular', isActive: false),
        TopicButton(text: 'Newest', isActive: false),
        TopicButton(text: 'Trending', isActive: false),
      ],
    );
  }
}

class TopicButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback? onPressed;
  const TopicButton({
    super.key,
    required this.text,
    this.isActive = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !isActive
              ? Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Color(0xFF928DB4), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16),
                )
              : Text(
                  text,
                  style: const TextStyle(color: Color(0xFF27214D), fontSize: 24, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.24),
                ),
          const SizedBox(height: 1),
          isActive
              ? Container(
                  width: 22,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, strokeAlign: BorderSide.strokeAlignCenter, color: Color(0xFFFFA451)),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
