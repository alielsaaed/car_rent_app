import 'package:car_rent_app/components/bottom_nav_bar.dart';
import 'package:car_rent_app/components/custom_card.dart';
import 'package:car_rent_app/components/custom_list_scroll.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset("assets/images/Ellipse 2.png",
                        fit: BoxFit.cover),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome"),
                      Text(
                        "Ali Elsaaed",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                  const SizedBox(width: 120),
                  IconButton(
                    alignment: AlignmentDirectional.topEnd,
                    onPressed: () {
                      Navigator.of(context).pushNamed("notifications");
                    },
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Color(0xFF4455F3),
                      size: 30,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const SearchBar(
                  leading: Icon(Icons.search, color: Colors.black26),
                  hintText: "Search your Car",
                  elevation: MaterialStatePropertyAll(1),
                  hintStyle: MaterialStatePropertyAll(
                    TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 15),
                  const Text(
                    "Brands",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 200),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("brands");
                    },
                    child: const Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              const CustomListScroll(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 18),
                  const Text(
                    "Popular car",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 150),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              InkWell(
                child: const Customcard(),
                onTap: () => Navigator.of(context).pushNamed("cardetails"),
              ),
              InkWell(
                child: const Customcard(),
                onTap: () => Navigator.of(context).pushNamed("cardetails"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
