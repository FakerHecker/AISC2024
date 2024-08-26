import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planta/GradientText.dart';

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
          Row(children: [
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/container-profile.png"))),
            ),
            const SizedBox(width: 10),
            Text(
              "Chào Plantie 🍀",
              style: GoogleFonts.bricolageGrotesque(
                fontWeight: FontWeight.w800,
                fontSize: 28,
              ),
            ),
            const SizedBox(width: 45),
            const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            const SizedBox(width: 25),
            const Icon(
              Icons.messenger_outline,
              color: Colors.black,
            ),
          ]),
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
            alignment: const Alignment(-0.85, 0),
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
            height: 300,
            width: 380,
            decoration: BoxDecoration(
              color: const Color(0xCCCAE0CD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  alignment: const Alignment(-1, 0),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    const Icon(Icons.location_on,
                        size: 20, color: Color(0xFF005200)),
                    Text(
                      "Thành phố Hồ Chí Minh",
                      style: GoogleFonts.bricolageGrotesque(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: const Color(0xFF005200),
                      ),
                    )
                  ]),
                ),
              ),
              Container(
                alignment: const Alignment(-0.9, 0),
                child: GradientText(
                  "34\u00b0",
                  gradient: const LinearGradient(
                    colors: [Color(0xFF059710), Color(0xB304CB01)],
                  ),
                  style: GoogleFonts.bricolageGrotesque(
                    fontWeight: FontWeight.w800,
                    fontSize: 48,
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(-0.9, 0),
                child: Text(
                  "Nắng đẹp",
                  style: GoogleFonts.bricolageGrotesque(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: const Color(0xFF005200),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/icon-uv.png"))),
                        ),
                        const Column(
                          children: [Text("Chỉ số UV"), Text("Trung bình")],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/icon-uv.png"))),
                        ),
                        const Column(
                          children: [Text("Chỉ số UV"), Text("Trung bình")],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/icon-uv.png"))),
                        ),
                        const Column(
                          children: [Text("Chỉ số UV"), Text("Trung bình")],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/icon-uv.png"))),
                        ),
                        const Column(
                          children: [Text("Chỉ số UV"), Text("Trung bình")],
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
