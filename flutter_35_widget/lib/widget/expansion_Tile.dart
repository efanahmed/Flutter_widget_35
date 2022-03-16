import 'package:flutter/material.dart';

class HomePge9 extends StatefulWidget {
  const HomePge9({Key? key}) : super(key: key);

  @override
  _HomePge9State createState() => _HomePge9State();
}

class _HomePge9State extends State<HomePge9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: const ExpansionTile(
        title: Text(
          'see more',
        ),
        leading: Icon(Icons.info),
        backgroundColor: Colors.black12,
        children: [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text("Second"),
          ),
          ListTile(
            title: Text('Third'),
          ),
        ],
      ),
    );
  }
}
