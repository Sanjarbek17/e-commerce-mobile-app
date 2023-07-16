import 'package:e_commerce_mobile_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListOfCards extends StatelessWidget {
  final double height;
  final List<ProductCard> children;
  const ListOfCards({
    super.key,
    required this.height,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(left: 24, right: 24),
        children: children,
      ),
    );
  }
}
