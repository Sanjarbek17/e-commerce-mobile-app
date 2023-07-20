import 'package:e_commerce_mobile_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopicRow extends StatefulWidget {
  final List<String> topics;
  const TopicRow({
    super.key,
    required this.topics,
  });

  @override
  State<TopicRow> createState() => _TopicRowState();
}

class _TopicRowState extends State<TopicRow> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          itemBuilder: (context, index) => TopicButton(
                text: widget.topics[index],
                index: index,
                selected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  Provider.of<ProductPorivder>(context, listen: false).getProductsByCategory(['smartphones', 'laptops', 'fragrances', 'groceries'][index]);
                },
              ),
          itemCount: widget.topics.length),
    );
  }
}

class TopicButton extends StatefulWidget {
  final String text;
  final int index;
  final bool selected;
  final VoidCallback? onTap;
  const TopicButton({
    super.key,
    required this.text,
    required this.index,
    this.onTap,
    required this.selected,
  });

  @override
  State<TopicButton> createState() => _TopicButtonState();
}

class _TopicButtonState extends State<TopicButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: TextButton(
        onPressed: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          style: !widget.selected
              ? const TextStyle(
                  color: Color(0xFF928DB4),
                  fontSize: 16,
                  fontFamily: 'Brandon Grotesque',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.16,
                )
              : const TextStyle(
                  color: Color(0xFF27214D),
                  fontSize: 24,
                  fontFamily: 'Brandon Grotesque',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.24,
                ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: Text(widget.text),
              ),
              widget.selected
                  ? Container(
                      width: 22,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, strokeAlign: BorderSide.strokeAlignCenter, color: Color(0xFFFFA451)),
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
