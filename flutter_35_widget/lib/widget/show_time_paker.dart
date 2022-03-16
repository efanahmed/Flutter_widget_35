import 'package:flutter/material.dart';

class HomePage10 extends StatefulWidget {
  const HomePage10({Key? key}) : super(key: key);

  @override
  _HomePage10State createState() => _HomePage10State();
}

class _HomePage10State extends State<HomePage10> {
  TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Time of day'),
      ),
      body: Center(
        child: Text(
          '${time!.hour.toString()}:${time!.minute.toString()}',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.access_time_outlined,
          ),
          onPressed: () async {
            TimeOfDay? newTime = await showTimePicker(
              context: context,
              initialTime: time!,
            );
            if (newTime != null) {
              setState(() {
                time = newTime;
              });
            }
          }),
    );
  }
}
