import 'package:flutter/material.dart';
import 'package:stylish_homepage/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),

      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
