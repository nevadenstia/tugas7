import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color; // Menambah properti warna

  ShopItem(this.name, this.icon, this.color);
}

class ShopProducts {
  final String name;
  final int price;
  final String description;
  final String imageUrl;
  final int amount;
  final int ratings;
  final String reviews;

  ShopProducts({
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.amount,
    required this.ratings,
    required this.reviews,
  });
}
