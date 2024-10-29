import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer Widget",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.green,
        actions: [
          PopupMenuButton<String>(
              icon: const Icon(Icons.settings, size: 30, weight: 50),
              onSelected: (String Value) {},
              offset: Offset(0, 50),
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    child: Text("My option"),
                  ),
                  const PopupMenuItem(
                    child: Text("Search"),
                  ),
                  const PopupMenuItem(
                    child: Text("Edit"),
                  ),
                  const PopupMenuItem(
                    child: Text("Delete"),
                  ),
                ];
              }),
        ],
      ),
      body: const Center(
        child: Text(
          "Welcome to drawer screen",
          style: TextStyle(fontSize: 18),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: const Text(
                    "U",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                ),
                accountName: const Text(
                  "Muhammad Umar",
                  style: const TextStyle(fontSize: 12),
                ),
                accountEmail: const Text(
                  "jdrajput19@gmail.com",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text("My Course"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text("Go premium"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text("Saved Vidoes"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
