import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/users_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_list_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static List<UsersModel> usersListTileData = [
    UsersModel(
        image: Assets.imagesAvatar1,
        title: "Waheed Ashraf",
        subTitle: "washraf@gmail.com"),
    UsersModel(
        image: Assets.imagesAvatar2,
        title: "Ali Ahmed",
        subTitle: "aliAhmed@gmail.com"),
    UsersModel(
        image: Assets.imagesAvatar1,
        title: "Ahmed Sami",
        subTitle: "Ahmed@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: usersListTileData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserListTile(usersModel: usersListTileData[index]));
        },
      ),
    );
  }
}
