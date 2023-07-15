import 'package:flutter/material.dart';

class BodyScaffold extends StatelessWidget {
  final Widget child;
  final String imagePath;
  final VoidCallback? onPressed;
  final String buttonName;
  const BodyScaffold({
    super.key,
    this.onPressed,
    required this.imagePath,
    required this.buttonName,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 60,
          child: Container(
            padding: const EdgeInsets.only(top: 50),
            color: const Color(0xFFFFA451),
            child: Center(
              child: Image.asset(imagePath, width: 300, height: 260),
            ),
          ),
        ),
        Expanded(
          flex: 40,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                child,
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA451),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(MediaQuery.of(context).size.width * 0.88, 60),
                      ),
                      child: Text(
                        buttonName,
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Brandon Grotesque', fontWeight: FontWeight.w500, letterSpacing: -0.16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
