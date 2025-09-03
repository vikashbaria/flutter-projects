import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SecondThoughts',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        useMaterial3: true,
      ),
      home: HomeScreem(),
    );
  }
}
