import 'package:flutter/material.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({Key? key}) : super(key: key);

  @override
  _HomePage6State createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choice Chip"),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text('Choice Chip'),
          // naw image create
          // avatar: Image.asset(""),
          selected: _isSelected,
          onSelected: (newBoolValue) {
            setState(() {
              _isSelected = newBoolValue;
            });
          },
        ),
      ),
    );
  }
}
