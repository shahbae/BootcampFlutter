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
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Nur Shah Alam"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/foto_me.jpg"),
            ),
            accountEmail: Text("shahbae3@gmail.com"),
          ),
          DraweListTile(
            iconData: Icons.group,
            onTilePressed: () {},
            title: "New Group",
          ),
          DraweListTile(
            iconData: Icons.lock,
            onTilePressed: () {},
            title: "New secret Group",
          ),
          DraweListTile(
            iconData: Icons.notifications,
            onTilePressed: () {},
            title: "New Channel Chat",
          ),
          DraweListTile(
            iconData: Icons.contacts,
            onTilePressed: () {},
            title: "Contacts ",
          ),
          DraweListTile(
            iconData: Icons.bookmark,
            onTilePressed: () {},
            title: "Saved Message",
          ),
          DraweListTile(
            iconData: Icons.call,
            onTilePressed: () {},
            title: "Calls",
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
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
