import 'package:car_rent_app/components/Features_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4455F3),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 30,
          ),
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFF4455F3),
      body: Column(
        children: [
          Positioned(
            top: 4,
            right: 0,
            left: 2,
            child: SizedBox(
              height: 300,
              child: Image.asset(
                  "assets/images/driven-ferrari-488gtb-superJumbo-removebg-preview 1.png"),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: const Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "Ferrari 488",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.star,
                              color: Color(0xFFFDAD13),
                              size: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "(4.9)",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.favorite,
                              color: Color(0xFF4455FF),
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Ferrari offers the 488 Pista in coupe and convertible variants. Unless you have a distinct preference for the feel of wind whipping through your hair .... more",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 20, bottom: 20),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "Features",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GridView(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 15,
                                  childAspectRatio: 0.56,
                                  mainAxisSpacing: 15),
                          children: const [
                            FeaturesCard(
                                image: "assets/images/icons/Engine-1.png",
                                info1: "Engine capacity",
                                info2: "3000CC"),
                            FeaturesCard(
                                image: "assets/images/icons/Trotting Horse.png",
                                info1: "Horse Power",
                                info2: "650"),
                            FeaturesCard(
                                image: "assets/images/icons/Car Seat.png",
                                info1: "Seats",
                                info2: "2"),
                            FeaturesCard(
                                image: "assets/images/icons/Engine-1.png",
                                info1: "Seats",
                                info2: "2"),
                            FeaturesCard(
                                image: "assets/images/icons/Gas Pump.png",
                                info1: "Seats",
                                info2: "2"),
                            FeaturesCard(
                                image: "assets/images/icons/Car Seat.png",
                                info1: "Seats",
                                info2: "2"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
