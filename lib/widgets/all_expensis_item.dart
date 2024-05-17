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
    return AnimatedCrossFade(
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(seconds: 1),
      firstCurve: Curves.easeOut,
      secondCurve: Curves.easeIn,
      firstChild:
          ActiveExpensisItem(allExpensisItmeModel: allExpensisItmeModel),
      secondChild:
          InActiveExpensisItem(allExpensisItmeModel: allExpensisItmeModel),
    );
  }
}
