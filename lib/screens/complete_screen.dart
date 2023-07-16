import 'package:e_commerce_mobile_app/widgets/bottom_sheets/small_button.dart';
import 'package:e_commerce_mobile_app/widgets/yellow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: const Color(0xFF4CD964)), color: const Color(0xFFE0FFE5)),
                child: SvgPicture.asset('assets/svg/check.svg'),
              ),
              const SizedBox(height: 40),
              const Text('Congratulations!!!', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF27214D), fontSize: 32, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.32)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text('Your order have been taken and is being attended to', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF27214D), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.20)),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: YellowButton(name: 'Track order', onPressed: () {}),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const SmallButton(name: 'Continue shopping'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
