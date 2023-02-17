import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7_1/screens/widget.dart';

import 'home.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites Page'),
        backgroundColor: Colors.amber,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
