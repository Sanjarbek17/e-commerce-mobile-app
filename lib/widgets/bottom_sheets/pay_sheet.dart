import 'package:flutter/material.dart';

import 'input_field.dart';

class PaySheet extends StatelessWidget {
  const PaySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.clear, color: Colors.black, size: 30),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 530,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0, left: 24, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputField(name: 'Card Holders Name', hintText: 'Adolphus Chris'),
                    SizedBox(height: 20),
                    InputField(name: 'Card Number', hintText: '1234 5678 9012 1314'),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: InputField(name: 'Date', hintText: '10/30'),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 3,
                          child: InputField(name: 'CCV', hintText: '123'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // const Spacer(),
              const SizedBox(height: 24),
              Expanded(
                child: Container(
                  // height: 75,
                  width: double.infinity,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFFA451),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(side: const BorderSide(width: 0.50, color: Color(0xFFFFA451)), borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.popUntil(context, (route) => route.isFirst);
                            },
                            child: const Text(
                              'Complete Order',
                              style: TextStyle(color: Color(0xFFFFA451), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
