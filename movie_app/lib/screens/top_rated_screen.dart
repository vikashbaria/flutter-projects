// lib/screens/top_rated_screen.dart
import 'package:flutter/material.dart';

class TopRatedScreen extends StatelessWidget {
  const TopRatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Top Rated Movies (Coming Soon)',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
