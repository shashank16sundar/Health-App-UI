import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DoctorDescription extends StatelessWidget {
  final String name, profession, imageURL;
  final double ratings;
  final int reviews;
  const DoctorDescription({
    super.key,
    required this.name,
    required this.profession,
    required this.imageURL,
    required this.ratings,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/$imageURL'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
          ),
        ),
        const SizedBox(width: 15),
        SizedBox(
          height: 105,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                profession,
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Ionicons.star,
                    color: Color(0xFFffb703),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$ratings ',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '($reviews Reviews)',
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
