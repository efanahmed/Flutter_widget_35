import 'package:flutter/material.dart';
import 'package:flutter_35_widget/widget/animated_cross_fade.dart';
import 'package:flutter_35_widget/widget/fittedbox.dart';
import 'package:flutter_35_widget/widget/show_date_pieker.dart';
import 'package:flutter_35_widget/widget/show_search.dart';
import 'package:flutter_35_widget/widget/stepper_widget.dart';
import 'package:flutter_35_widget/widget/stream_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage18(),
    );
  }
}
