import 'package:flutter/material.dart';

class GardenTab extends StatelessWidget {
  const GardenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const Image(
              image: AssetImage("assets/images/plant-image.png"),
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
        ]),
      ),
    );
  }
}
