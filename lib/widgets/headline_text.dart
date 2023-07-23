import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String headline;
  const HeadlineText({super.key, required this.headline});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        headline,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
