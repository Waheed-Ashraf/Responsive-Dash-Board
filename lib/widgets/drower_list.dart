import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drower_list_itme.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drower_list_item.dart';

class DrowerList extends StatefulWidget {
  const DrowerList({super.key});

  @override
  State<DrowerList> createState() => _DrowerListState();
}

class _DrowerListState extends State<DrowerList> {
  List<DrowerListItemModel> drowerListData = [
    DrowerListItemModel(
        leadingIcon: Assets.imagesDashboard, itemTiltle: "Dashboard"),
    DrowerListItemModel(
        leadingIcon: Assets.imagesMyTransctions, itemTiltle: "My Transaction"),
    DrowerListItemModel(
        leadingIcon: Assets.imagesStatistics, itemTiltle: "Statistics"),
    DrowerListItemModel(
        leadingIcon: Assets.imagesWalletAccount, itemTiltle: "Wallet Account"),
    DrowerListItemModel(
        leadingIcon: Assets.imagesMyInvestments, itemTiltle: "My Investments"),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drowerListData.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: DrowerListItem(
              isActive: currentIndex == index,
              drowerListItemModel: drowerListData[index],
            ));
      },
    );
  }
}
