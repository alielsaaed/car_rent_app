import 'package:car_rent_app/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      extendBody: true,
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
          "Settings",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/setting icons/Customer.png"),
                const SizedBox(width: 10),
                const Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(width: 170),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF4455F3),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/setting icons/Privacy.png"),
                const SizedBox(width: 10),
                const Text(
                  "Privacy & Security",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(width: 82),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF4455F3),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/setting icons/Help.png"),
                const SizedBox(width: 10),
                const Text(
                  "Help & Support",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(width: 105),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF4455F3),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/setting icons/About.png"),
                const SizedBox(width: 10),
                const Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(width: 188),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF4455F3),
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/setting icons/Logout.png"),
                const SizedBox(width: 10),
                const Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(width: 188),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: const Divider(
                color: Colors.black,
                thickness: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
