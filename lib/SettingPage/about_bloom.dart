import 'package:flutter/material.dart';

class AboutBloomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Bloom'),
        backgroundColor: Color(0xFF0C9869),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/flowerfarmer.jpeg"),
            SizedBox(height: 16.0),
            Text(
              'Bloom is a Flutter app tailored for flower growers in Bangladesh. '
                  'It revolutionizes flower harvesting by detecting diseases through leaf images, '
                  'providing solutions, and making product recommendations. The app offers a store '
                  'to purchase gardening supplies conveniently and facilitates direct sales to flower '
                  'shops. Users can access previous disease classification data and stay informed with '
                  'curated articles. Bloom\'s automated chat support system ensures real-time assistance, '
                  'and its multilingual interface enhances user-friendliness. By merging technology and agriculture, '
                  'Bloom empowers flower growers, fostering a thriving floral industry and a prosperous future.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
