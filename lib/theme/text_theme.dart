import 'package:flutter/material.dart';

TextTheme getTextTheme() {
  var theme = TextTheme(
    // display
    displayLarge: makeVariableFontStyle(weight: 800, size: 57),
    displayMedium: makeVariableFontStyle(weight: 800, size: 45),
    displaySmall: makeVariableFontStyle(weight: 800, size: 36),

    // headline
    headlineLarge: makeVariableFontStyle(weight: 700, size: 32),
    headlineMedium: makeVariableFontStyle(weight: 700, size: 28),
    headlineSmall: makeVariableFontStyle(weight: 700, size: 24),

    // title
    titleLarge: makeVariableFontStyle(weight: 700, size: 22),
    titleMedium: makeVariableFontStyle(weight: 700, size: 16),
    titleSmall: makeVariableFontStyle(weight: 700, size: 14),

    // label
    labelLarge: makeVariableFontStyle(weight: 700, size: 14),
    labelMedium: makeVariableFontStyle(weight: 700, size: 12),
    labelSmall: makeVariableFontStyle(weight: 700, size: 11),
  );

  theme = theme.apply(fontFamily: "Bricolage Grotesque");

  // body
  theme = theme.copyWith(
    bodyLarge: const TextStyle(fontFamily: "Be Vietnam"),
    bodyMedium: const TextStyle(fontFamily: "Be Vietnam"),
    bodySmall: const TextStyle(
      fontFamily: "Be Vietnam",
      fontWeight: FontWeight.w500,
    ),
  );

  return theme;
}

TextStyle makeVariableFontStyle({
  required double weight,
  required double size,
}) {
  return TextStyle(fontVariations: [
    FontVariation.weight(weight),
    FontVariation.opticalSize(size)
  ], fontSize: size);
}
