import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFF5C00),
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFF5C00),
            ),
            accountName: Text(
              "Nur Shah Alam",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/foto_me.jpg"),
            ),
            accountEmail: Text(
              "shahbae3@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          DraweListTile(
            iconData: Icons.badge,
            onTilePressed: () {},
            title: "Apply",
          ),
          DraweListTile(
            iconData: Icons.settings,
            onTilePressed: () {},
            title: "Settings",
          ),
          DraweListTile(
            iconData: Icons.notifications,
            onTilePressed: () {},
            title: "Notification",
          ),
          DraweListTile(
            iconData: Icons.bookmark,
            onTilePressed: () {},
            title: "bookmark",
          ),
        ],
      ),
    );
  }
}

class DraweListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DraweListTile(
      {super.key,
      required this.iconData,
      required this.onTilePressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(
        iconData,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
