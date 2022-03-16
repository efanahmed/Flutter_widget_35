import 'package:flutter/material.dart';

class HomePage14 extends StatefulWidget {
  const HomePage14({Key? key}) : super(key: key);

  @override
  _HomePage14State createState() => _HomePage14State();
}

class _HomePage14State extends State<HomePage14> {
  bool _isVisibiity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visibility Widget"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _isVisibiity = !_isVisibiity;
              });
            },
            child: const Text(
              'Swich',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "",
              height: 100,
            ),
            Visibility(
              visible: _isVisibiity,
              child: Image.asset(""),
            ),
            Image.asset(
              "",
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
