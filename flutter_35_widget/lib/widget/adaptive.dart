import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
              value: 1,
              onChanged: (double newValue) {},
            ),
            SwitchListTile.adaptive(
              title: const Text('Switch List Tile'),
              value: true,
              onChanged: (bool newValue) {},
            ),
            Switch.adaptive(
              value: true,
              onChanged: (bool newValue) {},
            ),
            const Icon(Icons.share),
          ],
        ),
      ),
    );
  }
}
