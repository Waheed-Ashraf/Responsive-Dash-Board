import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
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
      ],
    );
  }
}
