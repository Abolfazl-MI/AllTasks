import 'package:flutter/material.dart';

class DrawerLayot extends StatelessWidget {
  const DrawerLayot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("flutter.com"),
            accountEmail: const Text("example@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite'),
            // ignore: avoid_print
            onTap: () => print('Fav'),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Friends'),
            // ignore: avoid_print
            onTap: () => print('Friends'),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            // ignore: avoid_print
            onTap: () => print('Share'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Request'),
            // ignore: avoid_print
            onTap: () => print('Request'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child:  Center(
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            // ignore: avoid_print
            onTap: () => print('Settings'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Settings'),
            // ignore: avoid_print
            onTap: () => print('Exit'),
          ),
        ],
      ),
    );
  }
}
