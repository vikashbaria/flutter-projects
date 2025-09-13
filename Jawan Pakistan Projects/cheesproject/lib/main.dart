import 'package:flutter/material.dart';

void main() {
  runApp(const ChessBoardContainer());
}

class ChessBoardContainer extends StatelessWidget {
  const ChessBoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Chess Board")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(8, (row) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(8, (col) {
                  final bool isWhite = (row + col) % 2 == 0;
                  return Container(
                    width: 40,
                    height: 40,
                    color: isWhite ? Colors.white : Colors.black,
                  );
                }),
              );
            }),
          ),
        ),
      ),
    );
  }
}
