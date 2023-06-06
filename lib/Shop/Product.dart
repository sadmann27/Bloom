import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, quantity, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.quantity,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Willow Fertilizer",
      price: 234,
      quantity: 1,
      description: dummyText,
      image: "assets/images/mainproductone.png",
      color: Color(0xCBFFCA28)),
  Product(
      id: 2,
      title: "Pink flower",
      price: 1999,
      quantity: 1,
      description: dummyText,
      image: "assets/images/flowerrtwo.png",
      color: Color(0xFFF8BBD0)),
  Product(
      id: 3,
      title: "Sunflower Seeds",
      price: 150,
      quantity: 1,
      description: dummyText,
      image: "assets/images/seedsone.png",
      color: Color(0xFF8D6E63)),
  Product(
      id: 4,
      title: "Flowering Gloves",
      price: 750,
      quantity: 1,
      description: dummyText,
      image: "assets/images/glovesone.png",
      color: Color(0xFF1565C0)),
  Product(
      id: 5,
      title: "Garden Gnome",
      price: 500,
      quantity: 1,
      description: dummyText,
      image: "assets/images/decorationone.png",
      color: Color(0xFF4CAF50)),
  Product(
    id: 6,
    title: "Cool Insecticide",
    price: 399,
    quantity: 1,
    description: dummyText,
    image: "assets/images/insecticide.png",
    color: Color(0xFFFF6E40),
  ),
  Product(
    id: 7,
    title: "Red flower",
    price: 1560,
    quantity: 1,
    description: dummyText,
    image: "assets/images/flowerfour.png",
    color: Color(0xFFFF9E80),
  ),
  Product(
    id: 8,
    title: "White flower",
    price: 1999,
    quantity: 1,
    description: dummyText,
    image: "assets/images/flowerthree.png",
    color: Color(0xFFFFEE58),
  ),
  Product(
    id: 9,
    title: "Pruning Scissor",
    price: 600,
    quantity: 1,
    description: dummyText,
    image: "assets/images/pruningscissor.png",
    color: Color(0xFFFF5252),
  ),
  Product(
    id: 10,
    title: "Rose Seeds",
    price: 200,
    quantity: 1,
    description: dummyText,
    image: "assets/images/roseseed.png",
    color: Color(0xFF6D4C41),
  ),
  Product(
    id: 11,
    title: "Brown Pot",
    price: 750,
    quantity: 1,
    description: dummyText,
    image: "assets/images/brownpot.png",
    color: Color(0xFFA1887F),
  ),
  Product(
    id: 12,
    title: "Light Brown Pot",
    price: 800,
    quantity: 1,
    description: dummyText,
    image: "assets/images/lightbrownpot.png",
    color: Color(0xFFEF9A9A),
  ),
  Product(
    id: 13,
    title: "Spray Insecticide",
    price: 300,
    quantity: 1,
    description: dummyText,
    image: "assets/images/sprayinsecticide.png",
    color: Color(0xFFA5D6A7),
  ),

  Product(
    id: 14,
    title: "Ready Mix Soil",
    price: 250,
    quantity: 1,
    description: dummyText,
    image: "assets/images/soiil.png",
    color: Color(0xCBFFCA28),
  ),



];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";