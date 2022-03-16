import 'package:flutter/material.dart';

class HomePage12 extends StatefulWidget {
  const HomePage12({Key? key}) : super(key: key);

  @override
  _HomePage12State createState() => _HomePage12State();
}

class _HomePage12State extends State<HomePage12> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String scondPage = 'Scound Page';
  String thirdPage = 'Third Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton(
            itemBuilder: ((context) => [
                  PopupMenuItem(
                    child: Text(firstPage),
                    value: firstPage,
                  ),
                  PopupMenuItem(
                    child: Text(scondPage),
                    value: scondPage,
                  ),
                  PopupMenuItem(
                    child: Text(thirdPage),
                    value: thirdPage,
                  ),
                ]),
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
