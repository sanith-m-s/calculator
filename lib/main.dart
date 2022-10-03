import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:math_expressions/math_expressions.dart';


void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  final _num1 = TextEditingController();
  final _num2 = TextEditingController();
  final _tot = TextEditingController();
  String equation = "0";
  String result = "0";
  String expression = "";
  String operand1="";
  String operand2="";
  var c =0;
  var d =0;
  var count = 0;
  double equationFontSize = 48.0;
  double resultFontSize = 60.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "";
        result = "0";
        operand2="";
        operand1="";
        expression="";
        count = 0;
      } else if (buttonText == "=") {
        result = d.toString();
        // equation = "0";
        // operand2="";
        // operand1="";
        // expression="";
      } else {
        if (equation == "0") {
          equation = buttonText;

        } else {
          if (buttonText == '+') {
            c = int.parse(equation);
            // operand2=c.toString();
            expression = buttonText;

            // equation = equation + buttonText;
            equation = '';
            count = count+1;
            return;
          } else
            equation = equation + buttonText;
          if(count==0){
            operand1=equation;
          }
          else{
            operand2 = equation;
          }

          d = c + int.parse(equation);

        }
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      decoration: BoxDecoration(
          color: buttonColor, border: Border.all(color: Colors.transparent)),
      child: TextButton(
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.black87, Colors.blueGrey]),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  "",
                  style: TextStyle(fontSize: 48.0, color: Colors.white70),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  operand1+expression+operand2,
                  style: TextStyle(
                      fontSize: equationFontSize, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(left: 20, right: 10),
                child: Text(
                  result,
                  style:
                      TextStyle(fontSize: resultFontSize, color: Colors.white),
                ),
              ),
              /* Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  "1000/400",
                  style: TextStyle(fontSize: 48.0, color: Colors.white70),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Text(
                  "2.5+7.25",
                  style: TextStyle(fontSize: 48.0, color: Colors.white70),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Text(
                  "9.75+402",
                  style: TextStyle(fontSize: 48.0, color: Colors.white70),
                ),
              ),*/
              Expanded(
                child: Divider(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(170, 40),
                                primary: Colors.blueGrey[900],
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Text(
                                "(",
                                style: TextStyle(fontSize: 25),
                              ),
                              onPressed: ()=>buttonPressed("(")
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(170, 40),
                                primary: Colors.blueGrey[900],
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Text(
                                ")",
                                style: TextStyle(fontSize: 25),
                              ),
                              onPressed:  ()=>buttonPressed(")")
                            ),
                          ]))
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .60,
                          child: Table(children: [
                            /* TableRow(children: [
                                buildButton("c", 1, Colors.transparent),
                                buildButton("⌫", 1, Colors.transparent),
                                buildButton("÷", 1, Colors.transparent),
                              ],),*/
                            TableRow(
                              children: [
                                buildButton("7", 1, Colors.transparent),
                                buildButton("8", 1, Colors.transparent),
                                buildButton("9", 1, Colors.transparent),
                              ],
                            ),
                            TableRow(
                              children: [
                                buildButton(
                                  "4",
                                  1,
                                  Colors.transparent,
                                ),
                                buildButton("5", 1, Colors.transparent),
                                buildButton("6", 1, Colors.transparent),
                              ],
                            ),
                            TableRow(
                              children: [
                                buildButton("1", 1, Colors.transparent),
                                buildButton("2", 1, Colors.transparent),
                                buildButton("3", 1, Colors.transparent),
                              ],
                            ),
                            TableRow(
                              children: [
                                buildButton("0", 1, Colors.transparent),
                                buildButton(".", 1, Colors.transparent),
                                buildButton("C", 1, Colors.transparent),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),

                  // Column(
                  //   children: [
                  //     Container(
                  //       child:

                  Column(
                    children: [
                      Row(children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: ()=>buttonPressed("-"),
                                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                  // padding: const EdgeInsets.all(0.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      shape: CircleBorder()),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topLeft,
                                          colors: [Colors.red, Colors.yellow]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 60.0, minHeight: 60.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '-',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 50),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed:()=>buttonPressed("+"),
                                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                  // padding: const EdgeInsets.all(0.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topLeft,
                                          colors: [Colors.red, Colors.yellow]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(80.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 64.0, minHeight: 150.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                   onPressed:()=>buttonPressed("/"),
                                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                  // padding: const EdgeInsets.all(0.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      shape: CircleBorder()),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topLeft,
                                          colors: [Colors.red, Colors.yellow]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 60.0, minHeight: 60.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '/',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed:()=>buttonPressed("*"),
                                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                  // padding: const EdgeInsets.all(0.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      shape: CircleBorder()),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topLeft,
                                          colors: [Colors.red, Colors.yellow]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 60.0, minHeight: 60.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '*',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed:()=>buttonPressed("%"),
                                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                                  // padding: const EdgeInsets.all(0.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0.0),
                                      shape: CircleBorder()),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          end: Alignment.topLeft,
                                          colors: [Colors.red, Colors.yellow]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 60.0, minHeight: 60.0),
                                      // min sizes for Material buttons
                                      alignment: Alignment.center,
                                      child: const Text(
                                        '%',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 40),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        ElevatedButton(
                          onPressed:()=>buttonPressed("="),
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          // padding: const EdgeInsets.all(0.0),
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft,
                                  colors: [Colors.pink, Color(0xFFF48FB1)]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 150.0, minHeight: 64.0),
                              // min sizes for Material buttons
                              alignment: Alignment.center,
                              child: const Text(
                                '=',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 40),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                  //  ),
                  //   ],
                  // ),
                ],
              ),
            ])));
  }
}
