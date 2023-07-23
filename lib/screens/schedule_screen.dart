import 'package:flutter/material.dart';
import 'package:health_app/sections/navigation_bar.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule"),
      ),
      bottomNavigationBar: NavigationBar1(index: 1),
    );
  }
}
