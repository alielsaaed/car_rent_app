import 'package:flutter/material.dart';

class CustomFloatingBar extends StatefulWidget {
  const CustomFloatingBar({super.key});

  @override
  State<CustomFloatingBar> createState() => _CustomFloatingBarState();
}

class _CustomFloatingBarState extends State<CustomFloatingBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              currentIndex: 0,
              selectedItemColor: const Color(0xFF4455F3),
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              backgroundColor: const Color(0xFF4455F3),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.abc), label: ""),
              ],
            ),
          ),
        )
      ],
    );
  }
}
