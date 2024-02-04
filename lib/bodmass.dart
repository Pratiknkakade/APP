import 'package:flutter/material.dart';
import 'package:math_parser/math_parser.dart';
//import 'package:math_parser/integrate.dart';

class BodMassView extends StatefulWidget {
  const BodMassView({super.key});

  @override
  State<BodMassView> createState() => _BodMassViewState();
}

class _BodMassViewState extends State<BodMassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        final expression = MathNodeExpression.fromString(
          '4+2+4+8+9',
          variableNames: {'x', 'y', 'Θ', 'x_1'},
        );
        // Display the parsed expression in human-readable form
        print(expression);
      }),
    );
  }
}
