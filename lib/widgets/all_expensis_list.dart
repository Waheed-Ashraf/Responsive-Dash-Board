import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensis_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensis_item.dart';

class AllExpensisList extends StatefulWidget {
  const AllExpensisList({super.key});

  @override
  State<AllExpensisList> createState() => _AllExpensisListState();
}

class _AllExpensisListState extends State<AllExpensisList> {
  int currentItem = 0;
  final List<AllExpensisItmeModel> allExpensisItmeData = [
    AllExpensisItmeModel(
        headerImg: Assets.imagesBalance,
        itmeTitle: "Balance",
        date: "April 2022",
        ammount: r"$20,54"),
    AllExpensisItmeModel(
        headerImg: Assets.imagesBalance,
        itmeTitle: "Balance",
        date: "April 2022",
        ammount: r"$20,54"),
    AllExpensisItmeModel(
        headerImg: Assets.imagesBalance,
        itmeTitle: "Balance",
        date: "April 2022",
        ammount: r"$20,54"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: allExpensisItmeData.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;

      return Expanded(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
        child: GestureDetector(
          onTap: () {
            if (currentItem != e.key) {
              setState(() {
                currentItem = e.key;
              });
            }
          },
          child: AllExpensisItem(
            allExpensisItmeModel: item,
            isActive: currentItem == e.key,
          ),
        ),
      ));
    }).toList());
  }
}
