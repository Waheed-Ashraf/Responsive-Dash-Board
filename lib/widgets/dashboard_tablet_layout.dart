import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Tablet Dash Board ",
        style: AppStyles.styleSemiBold20(context),
      ),
    );
  }
}
