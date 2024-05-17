import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';

import 'package:responsive_dash_board/widgets/custom_drower.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrower()),
        Expanded(flex: 5, child: AllExpenses()),
        Expanded(flex: 4, child: SizedBox())
      ],
    );
  }
}
