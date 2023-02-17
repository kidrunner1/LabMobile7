import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab7_1/screens/widget.dart';

import 'favourites.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        child: Text(
          '$index',
          style: const TextStyle(
              color: Colors.amber, fontSize: 120, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.amber)),
        child: CurvedNavigationBar(
          index: index,
          height: 60.0,
          items: const <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
            Icon(
              Icons.favorite,
              size: 30,
            ),
            Icon(
              Icons.settings,
              size: 30,
            ),
            Icon(
              Icons.person,
              size: 30,
            ),
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.blue.shade200,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 200),
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
