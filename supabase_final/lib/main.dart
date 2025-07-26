import 'package:flutter/material.dart';
import 'config/supabase_client.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart'; // ✅ Home page import karein
import 'pages/add_task_page.dart'; // ✅ Add task page import karein

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSupabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SupaTasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),

      // 👇 Routing yahan define karein
      initialRoute: '/', // ye default route hoga
      routes: {
        '/': (context) => LoginPage(), // default page
        '/home': (context) => HomePage(), // jab login ho jaye
        '/addTask': (context) => AddTaskPage(), // add task ka page
      },
    );
  }
}
