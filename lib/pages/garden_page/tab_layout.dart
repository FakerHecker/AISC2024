import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:planta/components/product_mini_card.dart';
import 'package:planta/pages/garden_page/sheet_layout.dart';

enum SortOptions {
  recentlyAdded,
}

class GardenTab extends StatelessWidget {
  const GardenTab({super.key});

  @override
  Widget build(BuildContext context) {
    var children = List.filled(50, makeExampleCard(context));

    final textTheme = Theme.of(context).textTheme;

    const sortOptions = {
      SortOptions.recentlyAdded: "Đã thêm gần đây",
    };
    var sortMenuEntries = <DropdownMenuEntry<SortOptions>>[];
    sortOptions.forEach((key, value) 
      => sortMenuEntries.add(DropdownMenuEntry(value: key, label: value)));

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Row(children: [
            Text("Vườn cây của tôi", style: textTheme.titleMedium),
            // TODO: add sort dropdown here
          ]),
        )),
        SliverToBoxAdapter(child: Padding(
          padding: const EdgeInsets.all(16).copyWith(top: 0),
          child: LayoutGrid(
            columnSizes: [1.fr, 1.fr], // two column
            rowSizes: List.filled((children.length / 2).ceil(), auto),
            rowGap: 16,
            columnGap: 16,
            children: children,
          ),
        )),
      ],
      // To allow dragging with mouse cursor,
      // so that you can run this on native desktop without emulator
      scrollBehavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.touch,
        PointerDeviceKind.trackpad,
      }),
    );
  }
}

Widget makeExampleCard(BuildContext context) {
  return ProductMiniCard(
    title: 'Cây đuôi công 12312312312321321231',
    subtitle: '19/08/2024',
    highlightedText: "4 tháng 123123123",
    actionButtonIcon: Icons.favorite_outline,
    actionButtonOnPressed: () {
      
    },
    cardOnPressed: () async {
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
  );
}
