import 'package:flutter/material.dart';

class HomePage16 extends StatefulWidget {
  const HomePage16({Key? key}) : super(key: key);

  @override
  _HomePage16State createState() => _HomePage16State();
}

class _HomePage16State extends State<HomePage16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Page 1",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                "Page 2",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            child: const Center(
              child: Text(
                "Page 3",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                "Page 4",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Page 5",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
