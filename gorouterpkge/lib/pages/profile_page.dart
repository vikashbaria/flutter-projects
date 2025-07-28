import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  final String id;
  const ProfilePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Profile: $id"),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
