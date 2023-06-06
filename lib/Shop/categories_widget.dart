import 'package:flutter/material.dart';
import '../constants.dart';

class CategoriesWidget extends StatelessWidget {
  final VoidCallback onPlantsButtonPressed;
  final VoidCallback onBestSellingButtonPressed;
  final VoidCallback onFertilizerButtonPressed;
  final VoidCallback onToolsButtonPressed;
  final VoidCallback onSeedsButtonPressed;
  final VoidCallback onPotsButtonPressed;
  final VoidCallback onInsecticidesButtonPressed;
  final VoidCallback onAccessoriesButtonPressed;
  final VoidCallback onDecorationButtonPressed;
  final VoidCallback onSoilButtonPressed;

  CategoriesWidget({
    Key? key,
    required this.onPlantsButtonPressed,
    required this.onBestSellingButtonPressed,
    required this.onFertilizerButtonPressed,
    required this.onToolsButtonPressed,
    required this.onSeedsButtonPressed,
    required this.onPotsButtonPressed,
    required this.onInsecticidesButtonPressed,
    required this.onAccessoriesButtonPressed,
    required this.onDecorationButtonPressed,
    required this.onSoilButtonPressed,
  }) : super(key: key);

  final List<Map<String, dynamic>> categoryData = [
    {
      'image': 'assets/images/1.png',
      'name': 'Plants',
    },
    {
      'image': 'assets/images/2.jpeg',
      'name': 'Fertilizer',
    },
    {
      'image': 'assets/images/3.jpeg',
      'name': 'Tools',
    },
    {
      'image': 'assets/images/4.jpeg',
      'name': 'Seeds',
    },
    {
      'image': 'assets/images/5.jpeg',
      'name': 'Pots',
    },
    {
      'image': 'assets/images/7.jpeg',
      'name': 'Insecticides',
    },
    {
      'image': 'assets/images/7.png',
      'name': 'Accessories',
    },
    {
      'image': 'assets/images/8.jpeg',
      'name': 'Decoration',
    },
    {
      'image': 'assets/images/9.jpeg',
      'name': 'Soil',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryData.length,
              (index) => GestureDetector(
            onTap: () {
              if (index == 0) {
                onPlantsButtonPressed();
              } else if (index == 1) {
                onFertilizerButtonPressed();
              }
              else if (index == 2) {
                onToolsButtonPressed();
              }
              else if (index == 3) {
                onSeedsButtonPressed();
              }
              else if (index == 4) {
                onPotsButtonPressed();
              }
              else if (index == 5) {
                onInsecticidesButtonPressed();
              }
              else if (index == 6) {
                onAccessoriesButtonPressed();
              }
              else if (index == 7) {
                onDecorationButtonPressed();
              }
              else if (index == 8) {
                onSoilButtonPressed();
              }else {
                onBestSellingButtonPressed();
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    categoryData[index]['image']!,
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    categoryData[index]['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
