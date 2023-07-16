import 'package:e_commerce_mobile_app/widgets/bottom_sheets/delivery_sheet.dart';
import 'package:e_commerce_mobile_app/widgets/custom_back_button.dart';
import 'package:e_commerce_mobile_app/widgets/sum_show.dart';
import 'package:e_commerce_mobile_app/widgets/yellow_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xFFFFA451),
            child: const Row(
              children: [
                CustomBackButton(),
                Text(
                  'My Basket',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Brandon Grotesque',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.24,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 30),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset('assets/images/salad.png'),
                  title: const Text('Quinoa fruit salad', style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
                  subtitle: const Text('2packs', style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.14)),
                  trailing: const SumShow(
                    iconColor: Color(0xFF27214D),
                    text: Text('20,000', style: TextStyle(color: Color(0xFF27214D), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 50,
                );
              },
              itemCount: 6,
            ),
          ),
          Padding( 
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SumShow(
                  iconColor: Color(0xFF27214D),
                  iconHeight: 15,
                  iconWidth: 20,
                  text: Text('60,000', style: TextStyle(color: Color(0xFF27214D), fontSize: 24, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.24)),
                ),
                YellowButton(
                  name: 'Checkout',
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return const DeliverySheet();
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
