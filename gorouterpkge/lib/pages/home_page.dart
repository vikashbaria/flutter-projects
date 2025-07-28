import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/about'),
              child: const Text("Go to About Page"),
            ),
            ElevatedButton(
              onPressed: () => context.go('/profile/123'),
              child: const Text("Go to Profile Page (ID: 123)"),
            ),
          ],
        ),
      ),
    );
  }
}
