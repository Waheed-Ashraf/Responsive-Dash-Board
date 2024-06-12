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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 6, child: CustomDrower()),
        Expanded(
          flex: 13,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: MiddelSection(),
          ),
        ),
        Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.only(top: 24, right: 24, bottom: 24),
              child: RightSection(),
            )),
      ],
    );
  }
}
