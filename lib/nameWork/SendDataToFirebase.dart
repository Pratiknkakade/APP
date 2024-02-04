import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  String _nameErrorText = '';
  String _ageErrorText = '';

  DateTime? _selectedDate;

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _validateName(String input) {
    if (input.length <= 3) {
      setState(() {
        _nameErrorText = 'Name must be greater than 5';
      });
    } else {
      setState(() {
        _nameErrorText = '';
      });
    }
  }

  void _validateage(String input) {
    if (int.parse(input) > 100) {
      setState(() {
        _ageErrorText = 'Enter valid age';
      });
    } else {
      setState(() {
        _ageErrorText = '';
      });
    }
  }

  Future<void> addStudent(String name, int age) async {
    CollectionReference students =
        FirebaseFirestore.instance.collection('students');

    await students.add({
      'name': name,
      'age': age,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBEAEB),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Form Page',
          style: TextStyle(color: Colors.black),
          selectionColor: Colors.amber,
        ),
        backgroundColor: Color(0xFF2F3C7E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              onChanged: _validateName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
                errorText: _nameErrorText.isNotEmpty ? _nameErrorText : null,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _ageController,
              onChanged: _validateage,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'age plz',
                errorText: _ageErrorText.isNotEmpty ? _ageErrorText : null,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_nameController.text.isEmpty ||
                    _ageController.text.isEmpty) {
                  setState(() {
                    _nameErrorText = 'required*';
                    _ageErrorText = 'required*';
                  });
                  print('fill all detaills');
                } else {
                  addStudent(
                      _nameController.text, int.parse(_ageController.text));
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2F3C7E)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: Text('SUBMIT'),
            ),
          ],
        ),
      ),
    );
  }
}
