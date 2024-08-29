import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // TODO: Xử lý điều hướng tới bài đăng
          print('Button news card clicked!');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0xFFCAE0CD), width: 1)),
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        child:

        Container(
          width: 220,
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
                      child:
                      Image.asset(
                          "assets/images/news-image.jpg",
                          fit: BoxFit.cover,
                          height: 100,
                          width: double.infinity
                      ),
                    ),
                  ) ,
                ),
                SizedBox(height: 16,),
                Text("Cách chăn sóc cây cảnh trong nhà",
                  style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF005200)
                  ),),
                SizedBox(height: 10,),
                Text("Chăm sóc cây · Mẹo vặt",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF005200)
                  ),),
                SizedBox(height: 4,),
                Text("15/08/2024 · 3 phút đọc",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF005200)
                  ),),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/avatar.png",
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Planta",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF005200)
                      ),),
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