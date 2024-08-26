import 'package:flutter/material.dart';

class GardenSheet extends StatelessWidget {
  const GardenSheet({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title, subtitle;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: image,
                fit: BoxFit.cover,
                height: 48,
                width: 48,
              ),
            ),
            const SizedBox(width: 8),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: Theme.of(context).textTheme.labelLarge),
              Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
            ])
          ]),
          const Divider(height: 32),
          // TODO: add interactivity
          MenuItemButton(
            leadingIcon: const Icon(Icons.filter_vintage),
            onPressed: () {},
            requestFocusOnHover: false,
            child: Text("Thông tin cây trồng",
                style: Theme.of(context).textTheme.labelMedium),
          ),
          MenuItemButton(
            leadingIcon: const Icon(Icons.calendar_today),
            onPressed: () {},
            requestFocusOnHover: false,
            child: Text("Lịch chăm sóc",
                style: Theme.of(context).textTheme.labelMedium),
          ),
          MenuItemButton(
            leadingIcon: const Icon(Icons.cancel),
            onPressed: () {},
            requestFocusOnHover: false,
            child: Text("Xóa cây ra khỏi vườn",
                style: Theme.of(context).textTheme.labelMedium),
          ),
        ],
      ),
    );
  }
}
