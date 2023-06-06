import 'package:flutter/material.dart';
import '../SettingPage/settings.dart';
import '../UserInfo/profile.dart';
import '../Weather/weather.dart';


class SideMenuTile extends StatelessWidget {
  const SideMenuTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: ListTile(
            leading: SizedBox(
              height: 34,
              width: 34,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/icons/icons8-customer-50.png"),
              ),
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // Other
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Weather()),
            );
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              child: Image.asset("assets/icons/icons8-partly-cloudy-day-50.png"),
            ),
          ),
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 30,
            width: 30,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              child: Image.asset("assets/icons/icons8-location-50.png"),
            ),
          ),
          title: Text(
            "Nearby Flower Shops",
            style: TextStyle(color: Colors.white),
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
              child: Image.asset("assets/icons/icons8-history-50.png"),
            ),
          ),
          title: Text(
            "History",
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
          leading: SizedBox(
            height: 34,
            width: 34,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              child: Image.asset("assets/icons/icons8-settings-50.png"),
            ),
          ),
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
