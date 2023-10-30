import 'package:car_rent_app/components/brands_cards.dart';
import 'package:flutter/material.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
          color: const Color(0xFF4455F3),
        ),
        title: const Text(
          "Mercedes",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("notifications");
              },
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
                color: Color(0xFF4455F3),
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BrandsCard(),
            BrandsCard(),
            BrandsCard(),
            BrandsCard(),
            BrandsCard(),
            BrandsCard(),
          ],
        ),
      ),
    );
  }
}
