import 'package:flutter/material.dart';

class HomeStore extends ChangeNotifier {
  int count = 0;

  ThemeMode theme = ThemeMode.light;

  void toggleTheme(bool isDark) {
    theme = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void setCount(int value) {
    count = value;
    notifyListeners();
  }
}
