import 'package:flutter/material.dart';
import '../GradientText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<StatefulWidget>{
  bool? isChecked = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60,),
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
              const SizedBox(width: 10,),
              Text(
                "Chào Plantie 🍀",
                style: GoogleFonts.bricolageGrotesque(
                  fontWeight: FontWeight.w800,
                  fontSize: 28
                ),
              ),
              const SizedBox(width: 45,),
              const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              const SizedBox(width: 25,),
              const Icon(
                Icons.messenger_outline,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.all(10),
            child: SearchBar(
                leading: Icon(Icons.search),
                hintText: "Tìm kiếm cây trồng, triệu chứng bệnh...",
                constraints: BoxConstraints(minHeight: 48, maxHeight: 48)
            ),
          )
        ],
      ),
    );
  }
}