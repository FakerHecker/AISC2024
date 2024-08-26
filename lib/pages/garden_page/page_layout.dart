import 'package:flutter/material.dart';
import 'package:planta/components/product_mini_card.dart';
import 'package:planta/pages/garden_page/sheet_layout.dart';

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
              TabBar(tabs: [
                Tab(text: 'Trong nhà'),
                Tab(text: 'Ngoài trời'),
              ]),
            ],
          ),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProductMiniCard(
              title: 'Cây đuôi công',
              subtitle: '19/08/2024',
              highlightedText: "4 tháng",
              actionButtonIcon: Icons.favorite_outline,
              actionButtonOnPressed: () async {
                await showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  builder: (context) {
                    return const GardenSheet(
                      title: "Cây đuôi công",
                      subtitle: "Trong nhà",
                      image: AssetImage("assets/images/plant-image.png"),
                    );
                  },
                );
              },
            ),
          ),
          const Placeholder(),
        ]),
      ),
    );
  }
}
