import 'package:flutter/material.dart';

class RowDesignEx extends StatefulWidget {
  const RowDesignEx({super.key});

  @override
  State<RowDesignEx> createState() => _RowDesignExState();
}

class _RowDesignExState extends State<RowDesignEx> {
  String name = '';
  bool valid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Input'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: MediaQuery.sizeOf(context).width * .5,
                child: TextField(
                  onChanged: (str) {
                    setState(() {
                      name = str;
                      if (name.length < 5) {
                        valid = false;
                      } else {
                        valid = true;
                      }
                    });
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
            ]),
          ),
        ));
  }
}
