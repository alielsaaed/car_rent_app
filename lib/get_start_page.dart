import 'package:flutter/material.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(2, 2),
          colors: [
            Color(0xFF4455F3),
            Colors.white,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          const Text(
            textAlign: TextAlign.center,
            "Easy Way to buy your dream  Car",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 50,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                wordSpacing: 5),
          ),
          Image.asset(
              "assets/images/1421649-popular-red-car-wallpaper-3840x2160-4k-removebg-preview 1.png"),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Color(0xFF4455F3),
              ),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("signup", (route) => false);
            },
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
