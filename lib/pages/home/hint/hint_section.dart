import 'package:flutter/material.dart';

import '../../../components/hint_card.dart';

class HintCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [HintCard(), HintCard()],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [HintCard(), HintCard()],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [HintCard()],
          ),
        )
      ]),
    );
  }
}

class HintDropDown extends StatefulWidget {
  const HintDropDown({Key? key}) : super(key: key);

  @override
  State<HintDropDown> createState() => _HintDropDownState();
}

class _HintDropDownState extends State<HintDropDown> {
  String sortValue = "popular";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: sortValue,
      icon: const Icon(Icons.arrow_drop_down),
      isDense: true,
      underline: SizedBox.shrink(),
      padding: EdgeInsets.only(left: 14, right: 6, top: 4, bottom: 4),
      style: const TextStyle(color: Color(0xFF005200), fontSize: 16),
      onChanged: (String? newValue) {
        setState(() {
          sortValue = newValue!;
        });
      },
      items: const [
        DropdownMenuItem(value: 'popular', child: Text("Phổ biến")),
        DropdownMenuItem(value: 'new', child: Text("Mới nhất")),
      ],
    );
  }
}

class HintSection extends StatelessWidget {
  final String dropdownValue = "Phổ biến";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gợi ý cho bạn",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF005200)),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFCAE0CD), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: HintDropDown(),
                )
              ],
            ),
          ),
          HintCardList()
        ],
      ),
    );
  }
}
