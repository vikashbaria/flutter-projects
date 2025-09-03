import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;
  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;
  void toggle(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
