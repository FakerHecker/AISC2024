import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: AssetImage("assets/images/plant-image.png"),
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // TODO: extract properties below
            Text(
              "Cây đuôi công",
              style: textTheme.labelLarge,
            ),
            Text(
              "19/08/2024",
              style: textTheme.bodySmall,
              // TODO: fix font of body
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 tháng",
                  style:
                      textTheme.titleMedium?.apply(color: theme.primaryColor),
                ),
                IconButton.outlined(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline,
                    color: theme.primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
