import 'package:car_rent_app/components/cutom_favorite_cards.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

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
          "Favorites",
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
            CustomFavoriteCard(),
            CustomFavoriteCard(),
            CustomFavoriteCard(),
            CustomFavoriteCard(),
            CustomFavoriteCard(),
          ],
        ),
      ),
    );
  }
}
