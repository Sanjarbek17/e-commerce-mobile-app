import 'package:flutter/material.dart';

import '../route.dart';
import '../widgets/body_scaffold.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyScaffold(
        onPressed: () => Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.homeScreen, (_) => false),
        buttonName: 'Start Ordering',
        imagePath: 'assets/images/imgbin2.png',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What is your firstname?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF27214D), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.20),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Tony',
                hintStyle: const TextStyle(color: Color(0xFFC2BCBC), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.20),
                fillColor: const Color(0xFFF3F1F1),
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
