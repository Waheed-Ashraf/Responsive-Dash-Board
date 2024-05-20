import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/users_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.usersModel,
  });

  final UsersModel usersModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(usersModel.image),
          title: Text(
            usersModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            usersModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
