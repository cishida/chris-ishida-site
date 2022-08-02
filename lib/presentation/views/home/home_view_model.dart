import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeViewModel extends BaseViewModel {
  late ThemeMode _mode;
  bool get isThemeDark => _mode == ThemeMode.dark;

  void initialize(BuildContext context) {
    // Set theme on initialize for switch value
    final themeModel = getThemeManager(context).getSelectedTheme();

    // If mode has been set to light then use light else default dark
    _mode = themeModel.themeMode == ThemeMode.light
        ? ThemeMode.light
        : ThemeMode.dark;

    // notifyListeners();
  }

  void setThemeMode(bool value, BuildContext context) {
    _mode = value ? ThemeMode.dark : ThemeMode.light;

    getThemeManager(context).setThemeMode(_mode);
    notifyListeners();
  }

  // TODO: Remove below
  String _title = 'Home View';

  String get title => "$_title ${_counter.toString()}";

  void setTitle(String title) {
    _title = title;
  }

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
