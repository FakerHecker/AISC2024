import 'package:flutter/material.dart';

// To whoever have to maintain this widget.
// It was help together by hopes, dreams and duct tapes.
// I had to put everything in a stack, because actionbutton ontap and card ontap
// is clashing with each other.
// That's why there is a hardcoded height and right padding
// for the highlight text. 
// Forgive me/

class ProductMiniCard extends StatelessWidget {
  const ProductMiniCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.highlightedText,
    required this.actionButtonIcon,
    this.cardOnPressed,
    this.actionButtonOnPressed,
  });

  final String title, subtitle, highlightedText;
  final IconData actionButtonIcon;

  final void Function()? actionButtonOnPressed, cardOnPressed;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Card.outlined(
      margin: const EdgeInsets.all(0),
      child: Stack(alignment: Alignment.bottomRight, children: [
        InkWell(
          onTap: cardOnPressed,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: AssetImage("assets/images/plant-image.png"),
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Text(title, style: textTheme.labelLarge),
              // TODO: fix font of body
              Text(subtitle, style: textTheme.bodySmall),
              const SizedBox(height: 8),
              Container(
                height: 40,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(right: 48),
                // TODO: make this *shiny* ✨✨
                child: Text(highlightedText,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleMedium?.apply(color: theme.primaryColor)
                ),
              )
            ]),
          ),
        ),
        // TODO: add button interactivity, can split entire button widget
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton.outlined(
            onPressed: actionButtonOnPressed,
            icon: Icon(actionButtonIcon, color: theme.primaryColor),
          ),
        ),
      ])
    );
  }
}
