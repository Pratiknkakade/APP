import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  final String name;
  page2(this.name);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'),
      ),
      body: Column(children: [
        Center(
          child: Text(widget.name),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('back'))
      ]),
    );
  }
}
