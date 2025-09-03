import 'package:flutter/material.dart';

class QtyStepper extends StatelessWidget {
  final int value;
  final VoidCallback onInc;
  final VoidCallback onDec;
  const QtyStepper({
    super.key,
    required this.value,
    required this.onInc,
    required this.onDec,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _btn(context, Icons.remove, onDec),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            value.toString(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        _btn(context, Icons.add, onInc),
      ],
    );
  }

  Widget _btn(BuildContext context, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.all(10),
        child: Icon(icon, size: 20),
      ),
    );
  }
}
