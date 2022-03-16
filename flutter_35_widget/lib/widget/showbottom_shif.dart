import 'package:flutter/material.dart';

class HomePage17 extends StatefulWidget {
  const HomePage17({Key? key}) : super(key: key);

  @override
  _HomePage17State createState() => _HomePage17State();
}

class _HomePage17State extends State<HomePage17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Buttom"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext contex) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text("Close"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
