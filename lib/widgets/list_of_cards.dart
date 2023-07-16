import 'package:e_commerce_mobile_app/route.dart';
import 'package:e_commerce_mobile_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListOfCards extends StatelessWidget {
  final double height;
  final double childWidth;
  final double childImgWidth;
  final double childImgHeight;

  final List<String> children;
  const ListOfCards({
    super.key,
    required this.height,
    required this.children,
    required this.childWidth,
    required this.childImgWidth,
    required this.childImgHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(left: 24, right: 24),
        itemCount: children.length,
        itemBuilder: (context, index) {
          return ProductCard(
            imgHeight: childImgHeight,
            imgWidth: childImgWidth,
            width: childWidth,
            imgPath: children[index],
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.productScreen);
            },
          );
        },
      ),
    );
  }
}
