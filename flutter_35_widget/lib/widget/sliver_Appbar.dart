import 'package:flutter/material.dart';

class HomePage7 extends StatefulWidget {
  const HomePage7({Key? key}) : super(key: key);

  @override
  _HomePage7State createState() => _HomePage7State();
}

class _HomePage7State extends State<HomePage7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('sliver appbar'),
          ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            title: Text('Flutter'),
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'map',
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  "SLIVER",
                  style: TextStyle(fontSize: 40.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
