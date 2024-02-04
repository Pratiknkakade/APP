import 'package:flutter/material.dart';

class TextFieldEXample extends StatefulWidget {
  const TextFieldEXample({super.key});

  @override
  State<TextFieldEXample> createState() => _TextFieldEXampleState();
}

class _TextFieldEXampleState extends State<TextFieldEXample> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String _nameErrorText = '';
  String _numberErrorText = '';
  String _addressErrorText = '';
  String _dateErrorText = '';

  // DateTime? _selectedDate;

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    _addressController.dispose();
    _dateController.dispose();
    super.dispose();
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

  void _validatenumber(String input) {
    if (input.length != 10) {
      setState(() {
        _numberErrorText = 'Number must be greater than 10 characters';
      });
    } else {
      setState(() {
        _numberErrorText = '';
      });
    }
  }

  void _validateAddress(String input) {
    if (input.length <= 10) {
      setState(() {
        _addressErrorText = 'address must be greater tha 10 characters';
      });
    } else {
      setState(() {
        _addressErrorText = '';
      });
    }
  }

  void _validatedate(String input) {
    final dob = DateTime.parse(input);
    final currentdate = DateTime.now();
    final tenYearAgo = currentdate.subtract(Duration(days: 365 * 10));

    if (dob.isAfter(tenYearAgo)) {
      setState(() {
        _dateErrorText = 'date must be at least 10 year ago ';
      });
    } else {
      setState(() {
        _dateErrorText = '';
      });
    }
  }

  //Future<void> _selectedDate(BuildContext context) async {}

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _nameController,
              onChanged: _validateName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  errorText: _nameErrorText.isNotEmpty ? _nameErrorText : null),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _numberController,
              onChanged: _validatenumber,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  errorText:
                      _numberErrorText.isNotEmpty ? _numberErrorText : null),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _addressController,
              onChanged: _validateAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'address',
                  errorText:
                      _addressErrorText.isNotEmpty ? _addressErrorText : null),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              controller: _dateController,
              onChanged: _validatedate,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'date od birth (YYYY-MM-DD)',
                  errorText: _dateErrorText.isNotEmpty ? _dateErrorText : null),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isEmpty ||
                      _numberController.text.length != 10 ||
                      _dateController.text.isEmpty ||
                      _addressController.text.isEmpty) {
                    setState(() {
                      _nameErrorText = 'Name must be greater than 5';
                      _numberErrorText = 'Mobile Number must be 10 digit';
                      _dateErrorText = 'Date must be Before 10 years from now';
                      _addressErrorText = 'enter complete address ';
                    });
                    print('fill all detaills ');
                  } else {
                    String name = _nameController.text;
                    String address = _addressController.text;
                    String number = _numberController.text;
                    String date = _dateController.text;

                    print('Name : $name');
                    print('Number : $number');
                    print('Address : $address');
                    print('date of birth : $date');
                  }
                },
                child: Text('submit'))
          ],
        ),
      ),
    ));
  }
}
