import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drower.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width <= (800 - 48)
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      drawer: MediaQuery.of(context).size.width <= 800
          ? const CustomDrower()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
