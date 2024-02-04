import 'package:flutter/material.dart';

class Errortext extends StatefulWidget {
  const Errortext({super.key});

  @override
  State<Errortext> createState() => _ErrortextState();
}

class _ErrortextState extends State<Errortext>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String name = '';
  bool valid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * .5,
              child: TextField(
                onChanged: (str) {
                  name = str;
                  if (name.length < 5) {
                    valid = false;
                  } else {
                    valid = true;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                  errorText: valid ? "yes" : "no",
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Ok",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
