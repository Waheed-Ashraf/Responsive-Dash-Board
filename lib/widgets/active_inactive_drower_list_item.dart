import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrowerActiveListItem extends StatelessWidget {
  const DrowerActiveListItem({
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
        style: AppStyles.styleBold16(context),
      ),
      trailing: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}

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
