import 'package:flutter/material.dart';
import 'about_bloom.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(0xFF0C9869),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: SizedBox(
              height: 34,
              width: 34,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Color(0xFF0C9869),
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/icons/icons8-flower-50.png"),
              ),
            ),
            title: Text(
              'About Bloom',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutBloomPage()),
              );
            },
          ),
          // Other settings tiles
        ],
      ),
    );
  }
}
