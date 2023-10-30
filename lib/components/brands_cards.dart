import 'package:flutter/material.dart';

class BrandsCard extends StatelessWidget {
  const BrandsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
              "assets/images/Mercedes-GT-AMG-GT-63-S-4-Door-2020-removebg-preview.png"),
          const SizedBox(width: 10),
          const Column(
            children: [
              Text(
                "CLA 180",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "\$100,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
