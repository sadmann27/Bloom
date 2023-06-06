import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Camera/camera.dart';
import '../Shop/shop.dart';
import '../constants.dart';


class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  void _onCameraButtonPressed(BuildContext context) async {
    final cameras = await availableCameras();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return CameraScreen(
            camera: cameras.first,
          );
        },
      ),
    );
  }

  void _onStoreButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const Shop(); // Pass the 'context' argument to the Shop widget constructor
        },
      ),
    );
  }



  void _onHistoryButtonPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return DataHistoryPage(); // Replace with the actual page/widget for data history
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/store.svg"),
            onPressed: () => _onStoreButtonPressed(context), // Fix: Call the _onStoreButtonPressed method
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/articless.svg"),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () async {
              final cameras = await availableCameras();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return CameraScreen(
                      camera: cameras.first,
                    );
                  },
                ),
              );
            },
            child: IconButton(
              icon: SvgPicture.asset("assets/icons/cam.svg"),
              onPressed: () => _onCameraButtonPressed(context),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/history_1.svg"),
            onPressed: () => _onHistoryButtonPressed(context),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/chatbot.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class DataHistoryPage extends StatelessWidget {
  const DataHistoryPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Implement your data history page/widget UI here
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data History'),
      ),
      body: Container(
        child: const Center(
          child: Text('Data History Page'),
        ),
      ),
    );
  }
}
