import 'package:flutter/material.dart';

class ProductMiniCard extends StatelessWidget {
  const ProductMiniCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.highlightedText,
    required this.actionButtonIcon,
  });

  final String title, subtitle, highlightedText;
  final IconData actionButtonIcon;

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
            Text(
              title,
              style: textTheme.labelLarge,
            ),
            Text(
              subtitle,
              style: textTheme.bodySmall,
              // TODO: fix font of body
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TODO: make this *shiny* ✨✨
                Text(
                  "4 tháng",
                  style:
                      textTheme.titleMedium?.apply(color: theme.primaryColor),
                ),
                // TODO: add button interactivity, can split entire button widget
                IconButton.outlined(
                  onPressed: () {},
                  icon: Icon(
                    actionButtonIcon,
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
