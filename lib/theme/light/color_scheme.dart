import 'package:flutter/material.dart';

ColorScheme getLightColorScheme() {
  return ColorScheme.fromSeed(
    seedColor: const Color(0xFF059710),
    brightness: Brightness.light,
    // custom values
    primary: const Color(0xFF059710),
    onPrimary: const Color(0xFFFFFFFF),
    surface: const Color(0xFFFCFFFC),
    surfaceContainer: const Color(0xFFFDFFFA),
    surfaceContainerLow: const Color(0xFFF8F8F8),
    surfaceContainerHigh: const Color(0xFFFCFFF8),
    onSurface: const Color(0xFF005200),
    onSurfaceVariant: const Color(0xFF005200),
    outline: const Color(0xFFCAE0CD),
    outlineVariant: const Color(0xFFCAE0CD),
    error: const Color(0xFFBF0D48),
  );
}
