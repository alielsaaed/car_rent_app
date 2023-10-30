import 'package:flutter/material.dart';

class CustomLoginIcons extends StatelessWidget {
  final String title;
  const CustomLoginIcons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 20),
            Image.asset("assets/images/Line 1.png"),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10),
            Image.asset("assets/images/Line 1.png"),
            const SizedBox(width: 20),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Image.asset(
                "assets/images/icons/Facebook.png",
              ),
              onTap: () {},
            ),
            const SizedBox(width: 30),
            InkWell(
              child: Image.asset("assets/images/icons/Google Plus.png"),
              onTap: () {},
            ),
            const SizedBox(width: 30),
            InkWell(
              child: Image.asset("assets/images/icons/Twitter Circled.png"),
              onTap: () {},
            ),
            const SizedBox(width: 30),
          ],
        )
      ],
    );
  }
}
