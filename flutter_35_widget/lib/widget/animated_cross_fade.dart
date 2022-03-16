import 'package:flutter/material.dart';

class HomePage18 extends StatefulWidget {
  const HomePage18({Key? key}) : super(key: key);

  @override
  _HomePage18State createState() => _HomePage18State();
}

class _HomePage18State extends State<HomePage18> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Animated Cross fade"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Image.asset(
            "assets/images.jpg",
            width: 200,
          ),
          secondChild: Image.asset(
            "assets/splash.png",
            width: 200,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
        ),
      ),
    );
  }
}
