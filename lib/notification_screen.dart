import 'package:car_rent_app/components/noti_card.dart';
import 'package:flutter/material.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

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
          "Notification",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            NotiCard(),
            NotiCard(),
            NotiCard(),
            NotiCard(),
            NotiCard(),
            NotiCard(),
            NotiCard(),
          ],
        ),
      ),
    );
  }
}
