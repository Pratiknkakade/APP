import 'package:app/Page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _nameController = TextEditingController();
  String name = '';
  String _nameErrorText = '';

  @override
  void dispose() {
    _nameController.dispose();
  }

  void _validateName(String input) {
    if (input.length <= 5) {
      setState(() {
        _nameErrorText = 'Name must be greater than 5 characters';
      });
    } else {
      setState(() {
        _nameErrorText = '';
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _nameController,
                onChanged: (_validateName) {
                  setState(() {
                    name = _validateName;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'name',
                    errorText:
                        _nameErrorText.isNotEmpty ? _nameErrorText : null),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page2(name)),
                  );
                },
                child: Text('go to page 2'))
          ],
        ),
      ),
    );
  }
}
