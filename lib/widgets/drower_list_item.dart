import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drower_list_itme.dart';
import 'package:responsive_dash_board/widgets/active_inactive_drower_list_item.dart';

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
        child: isActive
            ? DrowerActiveListItem(
                itemTitle: drowerListItemModel.itemTiltle,
                leadingIcon: drowerListItemModel.leadingIcon,
              )
            : DrowerInActiveListItem(
                itemTitle: drowerListItemModel.itemTiltle,
                leadingIcon: drowerListItemModel.leadingIcon,
              ));
  }
}
