import 'package:flutter/material.dart';
import 'package:planta/components/news_card.dart';

class NewsCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row (
        children: [
          NewsCard(),
          SizedBox(width: 16,),
          NewsCard(),
          SizedBox(width: 16,),
          NewsCard(),
        ],
      ),
    );
  }
}

class NewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tin tức mới",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF005200)),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
                        overlayColor: Colors.transparent
                    ),
                    onPressed: () {
                      print("Navigate to all news");
                    },
                    child: Text(
                      "Xem tất cả",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ))
              ],
            ),
          ),
          SizedBox(height: 1),
          NewsCardList()
        ],
      ),
    );
  }


}