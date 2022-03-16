import 'package:flutter/material.dart';

class HomePage11 extends StatefulWidget {
  const HomePage11({Key? key}) : super(key: key);

  @override
  _HomePage11State createState() => _HomePage11State();
}

class _HomePage11State extends State<HomePage11> {
  DateTime _dateTime = DateTime(2100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Date'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${_dateTime.day}-${_dateTime.month}-${_dateTime.year}',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? _newDate = await showDatePicker(
                    context: context,
                    initialDate: _dateTime,
                    firstDate: DateTime(1800),
                    lastDate: DateTime(3000),
                  );
                  if (_newDate != null) {
                    setState(() {
                      _dateTime = _newDate;
                    });
                  }
                },
                child: const Text('Get date'))
          ],
        ),
      ),
    );
  }
}
