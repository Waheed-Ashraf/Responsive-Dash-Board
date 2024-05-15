import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Mobile Dash Board ",
        style: AppStyles.styleSemiBold20(context),
      ),
    );
  }
}
