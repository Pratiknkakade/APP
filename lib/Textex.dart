import 'package:flutter/material.dart';
//import 'package:get/get.dart';

class Textex extends StatelessWidget {
  Textex({super.key});

  final TextEditingController _nameController = TextEditingController();
  //final Textex _nameErrorText = Get.put(Textex());
  String _nameErrorText = '';
  void _validateName(String input) {
    print(_nameErrorText);
    if (input.length <= 5) {
      {
        _nameErrorText = 'Name must be greater than 5 characters';
      }
    } else {
      {
        _nameErrorText = '';
      }
      ;
    }
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          ElevatedButton(
              onPressed: () {
                if (_nameErrorText.isNotEmpty) {
                  {
                    _nameErrorText = 'Name must be greater than 5';
                  }
                  ;
                  print('fill all detaills ');
                } else {
                  String name = _nameController.text;

                  print('Name : $name');
                }
              },
              child: Text('submit'))
        ],
      ),
    );
  }
}
