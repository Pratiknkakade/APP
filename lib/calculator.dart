//import 'dart:ffi';

import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  int val = 0, a = 0, b = 0, result = 0;
  String show = '';

  String op = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(children: [
              Expanded(
                  child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(0, 40, 30, 0),
                child: Text(
                  show,
                  style: const TextStyle(fontSize: 30),
                ),
              )),
              Expanded(
                  child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                child: Text(
                  result.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              )),
            ]),
          ),
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(40),
                child: Text(
                  val.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              )),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          val = 0;
                          a = 0;
                          b = 0;
                          show = '';
                          result = 0;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            'ac',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (val.toString().length == 1) {
                            val = 0;
                          } else {
                            String s = val.toString();
                            s = s.substring(0, s.length - 1);
                            val = int.parse(s);
                          }
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            'X',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '%',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          a = val;
                          op = '+';
                          val = 0;
                          result = result + a;
                          show = show + a.toString() + op;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '7');
                          a = 7;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '8');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '9');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          a = val;
                          op = '-';
                          val = 0;
                          result = result - a;
                          show = show + a.toString() + op;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '4');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '5');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '6');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          a = val;
                          op = '*';
                          val = 0;
                          result = result * a;
                          show = show + a.toString() + op;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '*',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '1');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '2');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '3');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          a = val;
                          op = '/';
                          val = 0;
                          show = show + a.toString() + op;
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '/',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '.',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '0');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '0',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '') {
                            a = 0;
                            b = 0;
                            val = 0;
                            op = '';
                          }
                          val = int.parse(val.toString() + '00');
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '00',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          if (op == '+') {
                            b = val;
                            val = result + b;
                            op = '';
                          }
                          if (op == '-') {
                            b = val;
                            val = a - b;
                            op = '';
                          }
                          if (op == '*') {
                            b = val;
                            val = a * b;
                            op = '';
                          }
                          if (op == '/') {
                            b = val;
                            op = '';

                            String s = (a / b).toString();
                            val = int.parse(s.substring(0, s.indexOf(".")));
                          }
                        });
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            '=',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ))
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
