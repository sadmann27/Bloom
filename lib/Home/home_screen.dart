import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../SideBarMenu/side_bar.dart';
import 'body.dart';
import 'my_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String iconFont = 'Icons';
  static const String iconFontPackage = 'flutter_icons';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  bool isSidebarOpen = false;
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isFlowerIcon = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )
      ..addListener(() {
        setState(() {});
      });
    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    ));
    super.initState();
  }

  void toggleSidebar() {
    setState(() {
      isSidebarOpen = !isSidebarOpen;
      isFlowerIcon = !isFlowerIcon;
      if (isSidebarOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: buildAppBar(),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            top: 0,
            bottom: 0,
            left: isSidebarOpen ? 0 : -288,
            width: 288,
            child: SideBar(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value - 30 * _animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(isSidebarOpen ? 265 : 0, 0),
              child: Transform.scale(
                scale: isSidebarOpen ? 1 : 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isSidebarOpen ? 0 : 0),
                  child: Body(),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF0C9869),
      leading: IconButton(
        icon: isFlowerIcon
            ? Image.asset(
          "assets/icons/icons8-flower-64.png",
          color: Colors.white,
        )
            : Transform.scale(
          scale: 0.8, // Adjust the scale value as needed
          child: Image.asset(
            "assets/icons/icons8-close-50.png",
            color: Colors.white,
          ),
        ),
        onPressed: () {
          toggleSidebar();
        },
      ),
    );
  }
}