import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: const Text(
                'Fruit Hub',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Bad Script',
                  fontWeight: FontWeight.w400,
                  height: 40,
                  letterSpacing: -0.48,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
