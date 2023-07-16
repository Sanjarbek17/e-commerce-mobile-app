import 'package:e_commerce_mobile_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListOfCards extends StatelessWidget {
  final double width;
  final double height;
  final double imgWidth;
  final double imgHeight;
  const ListOfCards({
    super.key,
    required this.width,
    required this.imgWidth,
    required this.imgHeight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 24, right: 24),
        children: [
          ProductCard(imgHeight: imgHeight, imgWidth: imgHeight, width: width),
          ProductCard(imgHeight: imgHeight, imgWidth: imgHeight, width: width),
        ],
      ),
    );
  }
}
