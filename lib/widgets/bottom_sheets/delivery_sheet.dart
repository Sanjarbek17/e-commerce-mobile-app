import 'package:e_commerce_mobile_app/widgets/bottom_sheets/pay_sheet.dart';
import 'package:flutter/material.dart';

import 'input_field.dart';
import 'small_button.dart';

class DeliverySheet extends StatelessWidget {
  const DeliverySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Transform.translate(
          offset: const Offset(0, -60),
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
        Container(
          padding: const EdgeInsets.only(top: 40.0, left: 24, right: 23),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InputField(name: 'Delivery address', hintText: '10th avenue, Lekki, Lagos State'),
              const SizedBox(height: 20),
              const InputField(name: 'Number we can call', hintText: '+234 812 345 6789'),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SmallButton(name: 'Pay on delivery'),
                  SmallButton(
                    name: 'Pay with card',
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return const PaySheet();
                        },
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
