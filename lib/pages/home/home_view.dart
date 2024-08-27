import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planta/GradientText.dart';
import 'package:planta/theme/light/color_scheme.dart';
import 'package:planta/theme/text_theme.dart';
import 'package:planta/grid_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<StatefulWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 60),
          Stack(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/container-profile.png")
                        )
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Chào Plantie 🍀",
                    style: GoogleFonts.bricolageGrotesque(
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                    ),
                    SizedBox(width: 25),
                    Icon(
                      Icons.messenger_outline,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(10),
            child: SearchBar(
              leading: Icon(Icons.search),
              hintText: "Tìm kiếm cây trồng, triệu chứng bệnh...",
              constraints: BoxConstraints(minHeight: 48, maxHeight: 48),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Thời tiết hôm nay",
              style: GoogleFonts.bricolageGrotesque(
                fontWeight: FontWeight.w800,
                fontSize: 22,
                color: const Color(0xFF005200),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.topLeft,
            height: 250,
            width: 380,
            decoration: BoxDecoration(
              color: const Color(0xCCCAE0CD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: getLightColorScheme().onSurface,
                          ),
                          const Text(
                            "Thành phố Hồ Chí Minh",
                          )
                        ],
                      ),
                      const Text("34\u00B0", style: TextStyle(fontSize: 38),),
                      const Text("Nắng đẹp", style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/sunny-image.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 200,),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }





  Widget _buildGridItem(IconData icon, String title, String value, Color bgColor) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 24, color: Colors.black54),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}



