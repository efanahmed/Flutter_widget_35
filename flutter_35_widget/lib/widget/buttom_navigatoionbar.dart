import 'package:flutter/material.dart';

class HomePage15 extends StatefulWidget {
  const HomePage15({Key? key}) : super(key: key);

  @override
  _HomePage15State createState() => _HomePage15State();
}

class _HomePage15State extends State<HomePage15> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
    Icon(Icons.favorite),
    Icon(Icons.linked_camera),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttom NavigationBar"),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(
                Icons.menu,
              )),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Love',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(
                Icons.linked_camera,
              )),
        ],
      ),
    );
  }
}
