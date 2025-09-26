import 'package:flutter/material.dart';
//import 'package:math_expressions/math_expressions.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = "";
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(input, style: TextStyle(fontSize: 24)),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(20),
            child: Text(
              result,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
              ),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
              ),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
              ),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("1", style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
