import 'package:e_commerce_mobile_app/providers/index_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopicRow extends StatefulWidget {
  const TopicRow({
    super.key,
  });

  @override
  State<TopicRow> createState() => _TopicRowState();
}

class _TopicRowState extends State<TopicRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <TopicButton>[
        TopicButton(text: 'Hottest', index: 0, onTap: () => Provider.of<IndexProvider>(context, listen: false).setIndex(0)),
        TopicButton(text: 'Popular', index: 1, onTap: () => Provider.of<IndexProvider>(context, listen: false).setIndex(1)),
        TopicButton(text: 'Newest', index: 2, onTap: () => Provider.of<IndexProvider>(context, listen: false).setIndex(2)),
        TopicButton(text: 'Top', index: 3, onTap: () => Provider.of<IndexProvider>(context, listen: false).setIndex(3)),
      ],
    );
  }
}

class TopicButton extends StatefulWidget {
  final String text;
  final int index;
  final VoidCallback? onTap;
  const TopicButton({
    super.key,
    required this.text,
    required this.index,
    this.onTap,
  });

  @override
  State<TopicButton> createState() => _TopicButtonState();
}

class _TopicButtonState extends State<TopicButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        style: Provider.of<IndexProvider>(context).index != widget.index
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Text(widget.text),
            ),
            Provider.of<IndexProvider>(context).index == widget.index
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
    );
  }
}
