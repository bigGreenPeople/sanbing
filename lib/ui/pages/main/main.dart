import 'package:flutter/material.dart';

import 'init_main.dart';

class FjMainPage extends StatefulWidget {
  static const String routeName = "/";

  const FjMainPage({Key? key}) : super(key: key);

  @override
  State<FjMainPage> createState() => _FjMainPageState();
}

class _FjMainPageState extends State<FjMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: mainPages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 57, 57, 57),
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        items: items,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
