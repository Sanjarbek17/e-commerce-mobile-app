// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // toolbarHeight: 80,
        elevation: 0.0,
        leading: SvgPicture.asset('assets/svg/menu.svg', color: const Color(0xFF27214D), width: 24, height: 12, fit: BoxFit.none),
        actions: [
          // basket icon from icon
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Color(0xFFFFA451),
                    size: 24,
                  ),
                  Text('My basket', style: TextStyle(color: Color(0xFF27214D), fontSize: 10, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400))
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 257,
                  child: Text.rich(
                    TextSpan(
                      children: const [
                        TextSpan(
                          text: 'Hello Tony, ',
                          style: TextStyle(color: Color(0xFF423B73), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.20),
                        ),
                        TextSpan(
                          text: 'What fruit salad combo do you want today?',
                          style: TextStyle(color: Color(0xFF27214D), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w600, letterSpacing: -0.20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      flex: 85,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for fruit salad combos',
                          hintStyle: TextStyle(color: Color(0xFF86859E), fontSize: 14, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SvgPicture.asset('assets/svg/bi_search.svg', color: const Color(0xFF86859E), width: 16, height: 16),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF3F4F9),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide(color: Color(0xFFF5F5F5))),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide(color: Color(0xFFF5F5F5))),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: SvgPicture.asset(
                        'assets/svg/settings.svg',
                        color: const Color(0xFF27214D),
                        width: 26,
                        height: 20,
                        // fit: BoxFit.none,
                      ),
                    ),
                  ],
                ), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}
