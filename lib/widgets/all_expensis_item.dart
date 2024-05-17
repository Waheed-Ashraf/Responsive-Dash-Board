import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensis_item_model.dart';
import 'package:responsive_dash_board/widgets/active_expensis_item.dart';
import 'package:responsive_dash_board/widgets/inactive_expensis_item.dart';

class AllExpensisItem extends StatelessWidget {
  final AllExpensisItmeModel allExpensisItmeModel;
  final bool isActive;
  const AllExpensisItem(
      {super.key, required this.allExpensisItmeModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensisItem(allExpensisItmeModel: allExpensisItmeModel)
        : InActiveExpensisItem(allExpensisItmeModel: allExpensisItmeModel);
  }
}
