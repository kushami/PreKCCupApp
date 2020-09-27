import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'color.dart';

final ThemeData mainTheme = _buildTheme();

ThemeData _buildTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    appBarTheme: const AppBarTheme(brightness: Brightness.light, elevation: 0),
    colorScheme: _mainColorScheme,
    primaryColor: spaceCadet,
    canvasColor: backgroundWhite,
    accentColor: oxfordBlue,
    buttonColor: maximumBlueGreen,
    scaffoldBackgroundColor: backgroundWhite,
    cardColor: backgroundWhite,
    disabledColor: disabledGrey,
    buttonTheme: const ButtonThemeData(
      colorScheme: _mainColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: oxfordBlue,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    ),
    textTheme: base.textTheme,
    primaryTextTheme: base.primaryTextTheme,
    accentTextTheme: base.accentTextTheme,
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: oxfordBlue);
}

const ColorScheme _mainColorScheme = ColorScheme(
  primary: spaceCadet,
  primaryVariant: spaceCadetLight,
  secondary: independence,
  secondaryVariant: maximumBlueGreen,
  surface: surfaceWhite,
  background: backgroundWhite,
  error: errorRed,
  onPrimary: surfaceWhite,
  onSecondary: oxfordBlue,
  onSurface: oxfordBlue,
  onBackground: oxfordBlue,
  onError: surfaceWhite,
  brightness: Brightness.light,
);
