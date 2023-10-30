import 'package:flutter/material.dart';

class CustomListScroll extends StatelessWidget {
  const CustomListScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                      "assets/images/dc3736ceced319d4db52770885933463-removebg-preview 1.png"),
                  const Text("Audi")
                ],
              ),
              //const SizedBox(width: 15),
              Column(
                children: [
                  Image.asset(
                      "assets/images/9afded4adf3d90be93854870ccd3f352-removebg-preview 1.png"),
                  const Text("Lamborghini")
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  Image.asset("assets/images/Mercedes-Logo 1.png"),
                  const Text("Mercedes")
                ],
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset("assets/images/pngwing.com (1).png")),
                  const Text("Ferrari ")
                ],
              ),
            ],
          )),
    );
  }
}
