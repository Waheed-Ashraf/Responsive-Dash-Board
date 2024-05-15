import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dash_board/widgets/custom_drower.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrower()),
      ],
    );
  }
}
