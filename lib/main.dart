import 'package:flutter/material.dart';
import 'package:planta/pages/garden_page/page_layout.dart';
import 'package:planta/theme/light/light_theme.dart';
import 'package:provider/provider.dart';

import 'home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Planta',
        theme: getLightTheme(),
        home: const GardenPage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {}
