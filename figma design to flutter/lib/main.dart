import 'package:flutter/material.dart';
import 'app_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: "Rubik"),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
