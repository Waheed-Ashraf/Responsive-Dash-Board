import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

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

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Desktop Dash Board ",
        style: AppStyles.styleSemiBold20(context),
      ),
    );
  }
}
