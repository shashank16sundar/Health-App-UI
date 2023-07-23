import 'package:flutter/material.dart';
import 'package:health_app/screens/home_page.dart';
import 'package:health_app/screens/schedule_screen.dart';
import 'package:ionicons/ionicons.dart';

// ignore: must_be_immutable
class NavigationBar1 extends StatefulWidget {
  late int index;
  NavigationBar1({super.key, required this.index});

  @override
  State<NavigationBar1> createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  final Map<String, Widget Function()> _routes = {
    '/home/': () => const HomePage(),
    '/schedule/': () => const ScheduleScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: widget.index,
      onTap: (int index) {
        setState(() {
          if (widget.index != index) {
            widget.index = index;
            if (index == 0) {
              _pushReplacement(context, '/home/');
            } else if (index == 1) {
              _pushReplacement(context, '/schedule/');
            }
          }
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF1d3557),
      elevation: 0,
      iconSize: 26,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Ionicons.home_outline,
              color: Colors.grey,
            ),
            label: "Home",
            activeIcon: Icon(Ionicons.home)),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.calendar_outline,
            color: Colors.grey,
          ),
          label: 'Calendar',
          activeIcon: Icon(Ionicons.calendar),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.chatbubble_ellipses_outline,
            color: Colors.grey,
          ),
          label: 'Chat',
          activeIcon: Icon(Ionicons.chatbubble_ellipses),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Ionicons.person_outline,
            color: Colors.grey,
          ),
          label: 'My Profile',
          activeIcon: Icon(Ionicons.person),
        ),
      ],
    );
  }

  void _pushReplacement(BuildContext context, String routeName) {
    final Widget Function() builder = _routes[routeName]!;
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return builder(); // Use the widget builder associated with the routeName
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // You can use different transitions based on the index or routeName if needed
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}
