import 'package:flutter/material.dart';
import 'package:planta/components/plant_card.dart';

class GardenPage extends StatelessWidget {
  const GardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // does this look bad to you? it should.
    // because flutter should fucking burn in hell.
    // this shit shouldnt be fucking necessary just to get a tabbar
    // go learn jetpack compose or something else.
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'Trong nhà'),
                  Tab(text: 'Ngoài trời'),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: PlantCard(),
            ),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
