import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String name;
  final String hintText;
  const InputField({
    super.key,
    required this.name,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Color(0xFF27214D),
            fontSize: 20,
            fontFamily: 'Brandon Grotesque',
            fontWeight: FontWeight.w500,
            letterSpacing: -0.20,
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFBDBDBD),
              fontSize: 16,
              fontFamily: 'Brandon Grotesque',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.16,
            ),
            filled: true,
            fillColor: const Color(0xFFF3F1F1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
