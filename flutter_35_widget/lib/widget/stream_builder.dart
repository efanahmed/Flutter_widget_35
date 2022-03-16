import 'package:flutter/material.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomePage5State createState() => _HomePage5State();
}

// fake stream firebase
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _HomePage5State extends State<HomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Widget'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(
                  fontSize: 42.0,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
