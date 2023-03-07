import 'package:flutter/material.dart';

class ProviderTheme extends ChangeNotifier {
  ThemeData currentTheme;

  ProviderTheme({required bool isDarkMode})
      : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentTheme = ThemeData.light();
    ChangeNotifier();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    ChangeNotifier();
  }
}
