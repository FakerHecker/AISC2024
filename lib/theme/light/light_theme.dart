import 'package:flutter/material.dart';
import 'package:planta/theme/light/color_scheme.dart';
import 'package:planta/theme/text_theme.dart';

ThemeData getLightTheme() {
  var colorScheme = getLightColorScheme();
  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    fontFamily: "Bricolage Grotesque",
    cardTheme: CardTheme(color: colorScheme.surfaceContainerHigh),
    textTheme: getTextTheme(),
  );
}
