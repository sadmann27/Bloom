import 'package:flutter/material.dart';
import '../../../../constants.dart';

class BarSet extends StatelessWidget {
  const BarSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [

          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Flower Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set the text color to white
              ),
            ),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red, // Set the desired badge color here
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(7),
            child: const Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Handle shopping cart button pressed
            },
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white, // Set the icon color to white
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
