import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ScheduleDoctor extends StatelessWidget {
  final String name, profession, imageURL;
  const ScheduleDoctor(
      {super.key,
      required this.name,
      required this.profession,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFade8f4).withOpacity(0.6),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/$imageURL'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    profession,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 240,
                padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF3c1642).withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(blurRadius: 1.0, spreadRadius: 0.2),
                  ],
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.calendar,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Today',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Ionicons.time_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '14:30 - 15:30',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 112.5,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1.5,
                      color: const Color(0xFF1560BD),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    'Cancel',
                    style: TextStyle(color: Color(0xFF1560BD)),
                  )),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 112.5,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF1560BD)),
                  child: const Center(
                      child: Text(
                    'Reschedule',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
