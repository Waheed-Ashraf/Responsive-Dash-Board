import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/middel_section.dart';
import 'package:responsive_dash_board/widgets/right_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrower()),
        Expanded(
          flex: 3,
          child: MiddelSection(),
        ),
        Expanded(flex: 2, child: RightSection()),
      ],
    );
  }
}
