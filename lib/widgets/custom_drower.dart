import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_inactive_drower_list_item.dart';
import 'package:responsive_dash_board/widgets/drower_list.dart';
import 'package:responsive_dash_board/widgets/user_list_tile.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserListTile(
          image: Assets.imagesAvatar3,
          title: "Lekan Okeowo",
          subTitle: "demo@gmail.com",
        ),
        DrowerList(),
        Spacer(),
        DrowerInActiveListItem(
            leadingIcon: Assets.imagesSettings, itemTitle: "Setting system"),
        DrowerInActiveListItem(
            leadingIcon: Assets.imagesLogout, itemTitle: "Logout account"),
        SizedBox(
          height: 48,
        ),
      ],
    );
  }
}
