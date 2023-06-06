import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String city;

  const DetailPage({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Detail Page for $city',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
