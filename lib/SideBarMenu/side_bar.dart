import 'package:bloom/SideBarMenu/side_menu_tile.dart';
import 'package:flutter/material.dart';
import 'info_card.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF0C9869),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoCard(
              name: 'Sadman Rahman',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
              child: Text(
                "Browse".toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white70),
              ),
            ),
            SideMenuTile(),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
              child: Text(
                "Log".toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white70),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: SizedBox(
                height: 34,
                width: 34,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset("assets/icons/icons8-logout-50.png"),
                ),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(color: Colors.white),
              ),
            ),

          ],
        ),
      ),
    );
  }
}