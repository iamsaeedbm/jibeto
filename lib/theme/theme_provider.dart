import 'package:flutter/material.dart';
import 'package:jibeto_app/theme/dark_mode.dart';
import 'package:jibeto_app/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initiall light mode
  ThemeData _themeData = ThemeData.light();
  // get current theme
  ThemeData get themeData => _themeData;
  // is current theme dark mode
  bool get isDarkMode => _themeData == darkMode;
  // set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
