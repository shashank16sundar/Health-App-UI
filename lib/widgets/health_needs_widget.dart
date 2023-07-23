import 'package:flutter/material.dart';
import 'package:health_app/sections/health_needs.dart';
import 'package:health_app/utils/needs_list.dart';

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
          InkWell(
            onTap: () {
              if (imageDesc == 'More') {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  showDragHandle: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  builder: (context) {
                    return Container(
                      height: 350,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Health Care

                          HealthNeeds(displayList: healthListItems),

                          //Specialised Needs
                          HealthNeeds(
                            displayList: specialNeedsListItems,
                            title: true,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            },
            borderRadius: BorderRadius.circular(50),
            child: Container(
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
