import 'package:flutter/material.dart';
import 'package:health_app/sections/navigation_bar.dart';
import 'package:health_app/utils/needs_list.dart';
import 'package:health_app/widgets/headline_text.dart';
import 'package:health_app/widgets/schedule_doctor.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 85,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(left: 5),
          child: const HeadlineText(headline: 'Schedule'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0.0,
                  ),
                ),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff03045e),
                      ),
                      child: const Center(
                          child: Text(
                        'Upcoming',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Text(
                        'Complete',
                        style: TextStyle(color: Color(0xFF003049)),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Result',
                          style: TextStyle(color: Color(0xFF003049)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: doctorsID
                .map(
                  (doctor) => Column(
                    children: [
                      ScheduleDoctor(
                        name: doctor['name'],
                        profession: doctor['profession'],
                        imageURL: doctor['imageURL'],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
                .toList(),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar1(index: 1),
    );
  }
}
