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
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            // ignore: prefer_const_constructors
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                child: FittedBox(
                  child: Text('500'),
                ),
              ),
              title: Text('รายการ'),
              subtitle: Text('วัน/เดือน/ปี'),
            ),
          );
        },
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
