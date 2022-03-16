import 'package:flutter/material.dart';

class HomePage8 extends StatefulWidget {
  const HomePage8({ Key? key }) : super(key: key);

  @override
  _HomePage8State createState() => _HomePage8State();
}

class _HomePage8State extends State<HomePage8> {
  @override
  Widget build(BuildContext context) {
    Widget _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset("",
      height: 100,
      width: 100,
      fit: BoxFit.cover,
      ),
    );
    List<Widget> _list = [_image,_image,_image,_image];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget'),
      ),
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
      
    );
  }
}