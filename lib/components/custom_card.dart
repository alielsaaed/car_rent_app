import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                        'assets/images/driven-ferrari-488gtb-superJumbo-removebg-preview 2.png',
                        width: 250,
                        height: 180),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.favorite,
                      color: Color(0xFF4455FF),
                      size: 30,
                    ),
                  ],
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 1, bottom: 15, left: 5, right: 9),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Ferrari 488",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "\$40,000",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFDAD13),
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "4.9",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
