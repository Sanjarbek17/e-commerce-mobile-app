import 'package:e_commerce_mobile_app/route.dart';
import 'package:flutter/material.dart';

import '../widgets/body_scaffold.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyScaffold(
        onPressed: () => Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.authenticationScreen, (route) => false),
        buttonName: 'Let\'s Continue',
        imagePath: 'assets/images/imgbin.png',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get The Freshest Fruit Salad Combo',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF27214D), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.20),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                style: TextStyle(color: Color(0xFF5C577E), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
