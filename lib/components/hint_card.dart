import 'package:flutter/material.dart';

class HintCard extends StatelessWidget {
  final priceGradient = LinearGradient(
    colors: [
      Color(0xFF059710),
      Color(0xB304CB01),
      //Colors.redAccent,
    ],
    stops: [0.0, 1.0],
    // begin: Alignment.centerLeft,
    // end: Alignment.centerRight
  );
  final priceTextStyle = TextStyle();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Thêm hành động khi nhấn vào button ở đây
          print('Button hint clicked!');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFCAE0CD), width: 1)),
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        child: Container(
          width: 166,
          height: 248,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    width: 220,
                    child: Center(
                      child: Image.asset("assets/images/plant-image.png",
                          fit: BoxFit.cover,
                          height: 140,
                          width: double.infinity),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Cây đuôi cong",
                  style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF005200)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Trong nhà · Trang trí",
                  style: TextStyle(fontSize: 14, color: Color(0xFF005200)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return priceGradient.createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                      },
                      child: Text(
                        "120,000₫",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFFCAE0CD), width: 1),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.local_florist,
                          color: Color(0xFF059710),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      //[,]
    );
  }
}