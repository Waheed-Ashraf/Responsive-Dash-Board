import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/users_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/user_list_tile.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: 0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const AllExpensesHeader(
          title: "Quick Invoice",
          buttonIcon: Icons.add,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          child: Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const LatestTransactionList(),
      ]),
    );
  }
}

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
