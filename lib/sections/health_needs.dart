import 'package:flutter/material.dart';
import 'package:health_app/widgets/health_needs_widget.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5),
          child: const Text(
            'Health Needs',
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HealthNeedsCircularWidget(
                imageUrl: 'appointment.png',
                imageDesc: 'Appointment',
              ),
              HealthNeedsCircularWidget(
                imageUrl: 'hospital.png',
                imageDesc: 'Hospital',
              ),
              HealthNeedsCircularWidget(
                imageUrl: 'virus.png',
                imageDesc: 'Covid-19',
              ),
              HealthNeedsCircularWidget(
                imageUrl: 'more.png',
                imageDesc: 'More',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
