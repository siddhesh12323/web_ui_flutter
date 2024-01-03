import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_xpense/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        return _mobileNavBar();
      },
      desktop: (context) {
        return _desktopNavBar();
      },
    );
  }

  Widget _mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navlogo(),
        ],
      ),
    );
  }

  Widget _desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navlogo(),
          Row(
            children: [
              navButton('Features'),
              const SizedBox(width: 30),
              navButton('About'),
              const SizedBox(width: 30),
              navButton('Pricing'),
              const SizedBox(width: 30),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Get Started',
                ),
                style: navButtonStyle),
          )
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget navlogo() {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg (1).png'),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text(
          'pense',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
