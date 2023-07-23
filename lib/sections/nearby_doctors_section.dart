import 'package:flutter/material.dart';
import 'package:health_app/widgets/doctor_desc_widget.dart';
import 'package:health_app/widgets/headline_text.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText(headline: 'Nearby Doctors'),
        SizedBox(height: 20),
        DoctorDescription(
          name: 'Dr. Skylar Korsgaard',
          profession: 'Neurologist',
          ratings: 4.2,
          reviews: 208,
          imageURL: 'doctor_3.jpg',
        ),
        SizedBox(height: 25),
        DoctorDescription(
          name: 'Dr. Ruben Vargas',
          profession: 'Psychiatrist',
          ratings: 4.7,
          reviews: 162,
          imageURL: 'doctor_2.jpg',
        ),
        SizedBox(height: 25),
        DoctorDescription(
          name: 'Dr. Vinay Pratap',
          profession: 'Psychiatrist',
          ratings: 4.1,
          reviews: 312,
          imageURL: 'doctor_1.jpg',
        ),
      ],
    );
  }
}
