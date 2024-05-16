import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrowerInActiveListItem extends StatelessWidget {
  const DrowerInActiveListItem({
    super.key,
    required this.leadingIcon,
    required this.itemTitle,
  });
  final String leadingIcon;
  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(leadingIcon),
      title: Text(
        itemTitle,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
