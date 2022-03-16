import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage1(),
    );
   }
 }

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int _CurrentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Widget'),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step1'),
              content: Text(
                'information Step1',
              ),
            ),
            Step(
              title: Text('Step2'),
              content: Text(
                'information Step2',
              ),
            ),
            Step(
              title: Text('Step3'),
              content: Text(
                'information Step3',
              ),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _CurrentStep = newIndex;
            });
          },
          currentStep: _CurrentStep,
          onStepContinue: () {
            if (_CurrentStep != 2) {
              setState(() {
                _CurrentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_CurrentStep != 0) {
              setState(() {
                _CurrentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
