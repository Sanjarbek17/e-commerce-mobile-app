import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  final double width;
  final double imgWidth;
  final double imgHeight;
  const ProductCard({
    super.key, required this.width, required this.imgWidth, required this.imgHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: 83,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(right: 24.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C202020),
            blurRadius: 60,
            offset: Offset(0, 30),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.passthrough,
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(
                      'assets/images/salad.png',
                      width: imgWidth,
                      height: imgHeight,
                    ),
                    Positioned(
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: SvgPicture.asset('assets/svg/heart.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(height: 16),
          const Text(
            'Honey lime combo',
            style: TextStyle(
              color: Color(0xFF27214D),
              fontSize: 16,
              fontFamily: 'Brandon Grotesque',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.16,
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/svg/none.svg'),
                    const SizedBox(width: 4),
                    const Text(
                      '2,000',
                      style: TextStyle(
                        color: Color(0xFFF08626),
                        fontSize: 14,
                        fontFamily: 'Brandon Grotesque',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.14,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/svg/plus.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
