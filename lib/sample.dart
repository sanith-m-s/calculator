import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      decoration: BoxDecoration(
          color: buttonColor, border: Border.all(color: Colors.transparent)),
      child: TextButton(
          onPressed: null,
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
                  "411.75",
                  style: TextStyle(fontSize: 100.0, color: Colors.white),
                ),
              ),
              Container(
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
              ),
              // Expanded(
              //   child: Divider(),
              // ),


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
                                fixedSize: Size(150, 40),
                                primary: Colors.blueGrey[900],
                                shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Text("("),
                              onPressed: () {},
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(150, 40),
                                primary: Colors.blueGrey[900],
                                shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              child: Text(")"),
                              onPressed: () {},
                            ),
                          ]))
                ],
              ),




              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
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
                          buildButton("4", 1, Colors.transparent),
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







                Column(
                  children: [



                    Container(


                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [Colors.red, Colors.yellow]),



                      ),
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),

                    SizedBox(height: 5,),



                    Container(


                      width: 60,
                      height: 200,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.red, Colors.yellow]),



                      ),
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),





                  ],
                ),
                // ),


                // Container(
                //   width: MediaQuery.of(context).size.width * 0.20,
                //   child:
                Column(
                  children: [

                    Container(


                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [Colors.red, Colors.yellow]),



                      ),
                      child: const Text(
                        '/',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(height: 5,),


                    Container(


                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [Colors.red, Colors.yellow]),



                      ),
                      child: const Text(
                        'x',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(


                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [Colors.red, Colors.yellow]),



                      ),
                      child: const Text(
                        '%',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),


                  ],
                ),
                // )


              ),





            ])));
  }
}
