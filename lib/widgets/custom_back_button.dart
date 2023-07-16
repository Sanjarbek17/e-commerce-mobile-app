import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 42,
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.all(24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios),
            Text('Go back', style: TextStyle(color: Color(0xFF27214D), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
