import 'package:flutter/material.dart';
import 'package:health_app/widgets/health_needs_widget.dart';

class HealthNeeds extends StatefulWidget {
  final List<HealthNeedsCircularWidget> displayList;
  final bool? title;
  const HealthNeeds({super.key, required this.displayList, this.title});

  @override
  State<HealthNeeds> createState() => _HealthNeedsState();
}

class _HealthNeedsState extends State<HealthNeeds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5),
          child: widget.title == null
              ? const Text(
                  'Health Needs',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : const Text(
                  'Specialised Care',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.displayList
                .map((e) => HealthNeedsCircularWidget(
                    imageUrl: e.imageUrl, imageDesc: e.imageDesc))
                .toList(),
          ),
        ),
      ],
    );
  }
}
