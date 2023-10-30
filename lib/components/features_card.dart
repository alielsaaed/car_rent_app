import 'package:flutter/material.dart';

class FeaturesCard extends StatelessWidget {
  final String image;
  final String info1;
  final String info2;
  const FeaturesCard(
      {super.key,
      required this.image,
      required this.info1,
      required this.info2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              const SizedBox(height: 20),
              Text(info1),
              const SizedBox(height: 20),
              Text(
                info2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
