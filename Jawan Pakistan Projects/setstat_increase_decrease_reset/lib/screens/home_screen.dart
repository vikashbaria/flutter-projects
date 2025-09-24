import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int value = 0;

  void incre() {
    value++;
  }

  void deincre() {
    value--;
  }

  void reset() {
    value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Increment ,Decrement and Reset"),
          Text("$value"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    incre();
                  });
                },
                child: Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    deincre();
                  });
                },
                child: Text("Decrement"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
