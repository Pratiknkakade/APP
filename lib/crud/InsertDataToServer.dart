import 'dart:js_util';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InsertDataToServer extends StatefulWidget {
  const InsertDataToServer({super.key});

  @override
  State<InsertDataToServer> createState() => _InsertDataToServerState();
}

class _InsertDataToServerState extends State<InsertDataToServer> {
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        addStudent("Pratik", 22);
      }),
    );
  }
}
