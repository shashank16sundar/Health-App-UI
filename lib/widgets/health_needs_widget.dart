import 'package:flutter/material.dart';

class HealthNeedsCircularWidget extends StatelessWidget {
  final String imageUrl, imageDesc;
  const HealthNeedsCircularWidget(
      {super.key, required this.imageUrl, required this.imageDesc});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context)
                  .colorScheme
                  .primaryContainer
                  .withOpacity(0.6),
            ),
            child: Image.asset('assets/$imageUrl'),
          ),
          const SizedBox(height: 10),
          Text(
            imageDesc,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
