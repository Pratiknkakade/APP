import 'package:flutter/material.dart';

class rowexample extends StatefulWidget {
  const rowexample({super.key});

  @override
  State<rowexample> createState() => _rowexampleState();
}

class _rowexampleState extends State<rowexample> {
  int val = 0, a = 0, b = 0;
  String show = "";
  String op = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(40),
                child: Text(
                  show,
                  style: TextStyle(fontSize: 30),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(40),
                child: Text(
                  val.toString(),
                  style: TextStyle(fontSize: 30),
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
                          show = "";
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'AC',
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
                        child: Center(
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
                        child: Center(
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
                          if (show.length == 0) {
                            show = show + a.toString() + op;
                            print('...');
                          } else if (!show.contains('+')) {
                            show = show + op;
                            print('..');
                          } else {
                            show = show + a.toString() + op;
                            print('.');
                          }
                        });
                      },
                      child: Container(
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        });
                      },
                      child: Container(
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        });
                      },
                      child: Container(
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        });
                      },
                      child: Container(
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                        child: Center(
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
                            val = a + b;
                            op = '';

                            if (val == 0) {}
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
                          show = val.toString();
                        });
                      },
                      child: Container(
                        child: Center(
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
