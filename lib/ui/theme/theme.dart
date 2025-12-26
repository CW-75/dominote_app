import 'package:flutter/material.dart';

class ThemeApp {
  Map<String, ThemeData> themes = {
    'default': ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 19, 133, 226),
      ),
    ),
    'orange': ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 207, 119, 25),
      ),
    ),
  };

  ThemeData getTheme(String theme) {
    if (themes.containsKey(theme)) {
      return themes[theme]!;
    } else {
      return themes['default']!;
    }
  }
}
