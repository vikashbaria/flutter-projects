import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// STEP 1: Provider class
class SwitchProvider with ChangeNotifier {
  bool _isDark = false; // default Light theme

  bool get isDark => _isDark;

  void toggleTheme(bool value) {
    _isDark = value;
    notifyListeners(); // 🔔 sab widgets update
  }

  // Return current theme
  ThemeData get currentTheme => _isDark ? ThemeData.dark() : ThemeData.light();
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SwitchProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SwitchProvider>(
      builder: (context, switchProvider, child) {
        return MaterialApp(
          theme: switchProvider.currentTheme,
          home: child, // 👈 yaha child ka use hoga
        );
      },
      child: SwitchExample(), // 👈 ye ab dobara rebuild nahi hoga
    );
  }
}

class SwitchExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Scaffold Build 🚀"); // ab sirf ek dafa build hoga
    return Scaffold(
      appBar: AppBar(title: Text("Theme Toggle with Provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Toggle theme using switch"),

            // Sirf ye part rebuild hoga
            Consumer<SwitchProvider>(
              builder: (context, switchProvider, child) {
                print("Switch Widget Rebuild ⚡");
                return Switch(
                  value: switchProvider.isDark,
                  onChanged: (value) {
                    switchProvider.toggleTheme(value);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
