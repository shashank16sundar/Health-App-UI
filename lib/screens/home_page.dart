import 'package:flutter/material.dart';
import 'package:health_app/sections/health_needs.dart';
import 'package:health_app/sections/navigation_bar.dart';
import 'package:health_app/sections/nearby_doctors_section.dart';
import 'package:health_app/utils/needs_list.dart';
import 'package:health_app/widgets/headline_text.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(left: 5),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlineText(headline: 'Hi David'),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'How are you feeling today?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.0, color: Colors.grey),
            ),
            child: const Icon(
              Ionicons.notifications_outline,
              color: Colors.black,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.0, color: Colors.grey),
            ),
            child: const Icon(
              Ionicons.search_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Material(
              elevation: 40,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 160,
                padding: const EdgeInsets.only(
                    left: 15, top: 30, right: 15, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF086375),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 25),
                      blurRadius: 25.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/doctor_2.jpg'),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Ruben Vargas',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Text(
                              'Psychiatrist',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
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
                          SizedBox(width: 30),
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
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            HealthNeeds(
              displayList: homeScreenListItems,
            ),
            const SizedBox(height: 20),
            const NearbyDoctors(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar1(index: 0),
    );
  }
}
