//import 'package:app/bodmass.dart';
//import 'package:app/calculator.dart';
// import 'package:app/Errortext.dart';
// import 'package:app/FormExample.dart';
//import 'package:app/Page1.dart';
import 'package:app/calculator.dart';
// import 'package:app/TextFieldEXample.dart';
// import 'package:app/calculator.dart';
// import 'package:app/rowexample.dart';
import 'package:flutter/material.dart';
//import 'package:app/ColumnExample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
        home: calculator());
  }
}
