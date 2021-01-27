import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product(
      {@required this.title,
      @required this.description,
      @required this.images,
      @required this.colors,
     this.rating =0.0,
      @required this.price,
       this.isFavourite = false,
       this.isPopular = false
      });
}



List<Product> demoProducts = [
  Product(
//    id: 1,
    images: [
      'assets/shoe6.jpg',
      'assets/shoe3.jpg',
      'assets/shoe4.jpg',
      'assets/shoe6.jpg',
          ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Shoes",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
//    id: 2,
    images: [
      "assets/t-shirt1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "t-shirt Sport White",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
//    id: 3,
    images: [
      "assets/glap - Copy.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
//    id: 4,
    images: [
      "assets/t-shirt5.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "White T-shirt",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Nike Shoes & Sports gives you what you want in your gaming from over precision control your games to sharing";