import 'package:flutter/material.dart';

class CustomFavoriteCard extends StatelessWidget {
  const CustomFavoriteCard({super.key});

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
                    const SizedBox(width: 10),
                    const Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xFF4455FF),
                          size: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFFFDAD13),
                              size: 25,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 1, bottom: 15, left: 5, right: 9),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Text(
                        "Ferrari 488",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "\$40,000",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF4455F3),
                        )),
                        onPressed: () {},
                        child: const Text(
                          "Book now",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
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
