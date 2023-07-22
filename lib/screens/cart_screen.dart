import 'package:e_commerce_mobile_app/models/basket_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/basket_provider.dart';
import '../widgets/bottom_sheets/delivery_sheet.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/sum_show.dart';
import '../widgets/yellow_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<BasketProvider>(
            builder: (context, provider, child) {
              if (provider.status == 'start') {
                provider.getBasket();
                return const Center(child: CircularProgressIndicator());
              }
              if (provider.status == 'done') {
                List<BasketModel> basket = provider.basket;
                return Column(
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
                            leading: Image.network(basket[index].imgPath, width: 50, height: 50),
                            title: Text(basket[index].title, style: const TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
                            subtitle: Text('${basket[index].quantity} packs', style: const TextStyle(color: Colors.black, fontSize: 14, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w400, letterSpacing: -0.14)),
                            trailing: SumShow(
                              iconColor: const Color(0xFF27214D),
                              text: Text(basket[index].price.toString(), style: const TextStyle(color: Color(0xFF27214D), fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16)),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            height: 50,
                          );
                        },
                        itemCount: basket.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Brandon Grotesque',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.16,
                                ),
                              ),
                              SumShow(
                                iconColor: Color(0xFF27214D),
                                iconHeight: 15,
                                iconWidth: 20,
                                text: Text('2,000', style: TextStyle(color: Color(0xFF27214D), fontSize: 24, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.24)),
                              ),
                            ],
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
                );
              }
              return const Center(child: Text('Error'));
            }),
      ),
    );
  }
}
