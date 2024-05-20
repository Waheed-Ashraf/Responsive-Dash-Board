import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/users_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/inactive_drower_list_item.dart';
import 'package:responsive_dash_board/widgets/drower_list.dart';
import 'package:responsive_dash_board/widgets/user_list_tile.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserListTile(
              usersModel: UsersModel(
                  image: Assets.imagesAvatar3,
                  title: "Waheed Ashraf",
                  subTitle: "washraf124@gmail.com"),
            ),
          ),
          const DrowerList(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                DrowerInActiveListItem(
                    leadingIcon: Assets.imagesSettings,
                    itemTitle: "Setting system"),
                DrowerInActiveListItem(
                    leadingIcon: Assets.imagesLogout,
                    itemTitle: "Logout account"),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
