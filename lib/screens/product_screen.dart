// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_back_button.dart';
import '../widgets/sum_show.dart';
import '../widgets/yellow_button.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int count = 1;
  double price = 2000;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomBackButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/breakfest.png', width: 176, height: 176, fit: BoxFit.cover),
              ],
            ),
            // const SizedBox(height: 24),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Quinoa Fruit Salad', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF27214D), fontSize: 32, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.32)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (count > 1) {
                                              count--;
                                            }
                                          });
                                        },
                                        child: SvgPicture.asset('assets/svg/minus.svg')),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 15),
                                      child: SizedBox(width: 30, child: Text(count.toString(), textAlign: TextAlign.center, style: const TextStyle(color: Color(0xFF27214D), fontSize: 24, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.24))),
                                    ),
                                    InkWell(
                                        onTap: () {
                                          setState(() {
                                            count++;
                                          });
                                        },
                                        child: SvgPicture.asset('assets/svg/pluss.svg')),
                                  ],
                                ),
                                SumShow(
                                  iconColor: Color(0xFF27214D),
                                  iconHeight: 20,
                                  iconWidth: 20,
                                  text: Text((price * count).toString(), style: TextStyle(color: Color(0xFF27214D), fontSize: 24, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.24)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 24, right: 24, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('One Pack Contains:', style: TextStyle(color: Color(0xFF27214D), fontSize: 20, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.20)),
                          Container(
                            width: 153,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, strokeAlign: BorderSide.strokeAlignCenter, color: Color(0xFFFFA451)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text('Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.', style: TextStyle(color: Color(0xFF27214D), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
                          )
                        ],
                      ),
                    ),
                    const Divider(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text('If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make', style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.14)),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 48,
                                  height: 48,
                                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xFFFFF7F0)),
                                  child: SvgPicture.asset('assets/svg/heart.svg', fit: BoxFit.contain),
                                ),
                              ),
                              YellowButton(
                                name: 'Add to basket',
                                onPressed: () {
                                  // Provider.of<BasketProvider>(context, listen: false).addToBasket(BasketModel(
                                  //   quantity: count,
                                  //   price: (count * price).toInt(),
                                  // ));
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
