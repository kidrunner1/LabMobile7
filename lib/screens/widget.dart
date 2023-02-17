import 'package:flutter/material.dart';

import 'favourites.dart';
import 'form_screen.dart';
import 'home.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          builderHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }
}

Widget builderHeader(BuildContext context) => Container(
      color: Colors.amber.shade700,
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/5905356/pexels-photo-5905356.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          SizedBox(height: 12),
          Text('Krit', style: TextStyle(fontSize: 28, color: Colors.white)),
          Text('krit.d@ku.th',
              style: TextStyle(fontSize: 28, color: Colors.white))
        ],
      ),
    );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: ((context) =>
                      const MyHomePage(title: 'Home Page'))));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favorites'),
            onTap: (() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const FavouritesPage(),
              ));
            }),
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text('FromScreen'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FormScreen(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Updates'),
            onTap: () {},
          ),
          const Divider(color: Colors.black54),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined),
            title: const Text('Plugins'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Updates'),
            onTap: () {},
          ),
        ],
      ),
    );
