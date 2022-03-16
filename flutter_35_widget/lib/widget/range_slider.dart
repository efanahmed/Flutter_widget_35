import 'package:flutter/material.dart';

class HomePage13 extends StatefulWidget {
  const HomePage13({Key? key}) : super(key: key);

  @override
  _HomePage13State createState() => _HomePage13State();
}

class _HomePage13State extends State<HomePage13> {
  RangeValues values = const RangeValues(01, 0.9);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            divisions: 9,
            onChanged: (newValue) {
              setState(() {
                values = newValue;
              });
            }),
      ),
    );
  }
}
