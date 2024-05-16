import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drower_list_itme.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrowerListItem extends StatelessWidget {
  const DrowerListItem({
    required this.isActive,
    super.key,
    required this.drowerListItemModel,
  });
  final bool isActive;
  final DrowerListItemModel drowerListItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListTile(
          leading: SvgPicture.asset(drowerListItemModel.leadingIcon),
          title: Text(
            drowerListItemModel.itemTiltle,
            style: isActive
                ? AppStyles.styleBold16(context)
                : AppStyles.styleMedium16(context),
          ),
          trailing: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: 3.27,
            height: isActive ? 35 : 0,
            color: const Color(0xff4EB7F2),
          ),
        ));
  }
}
