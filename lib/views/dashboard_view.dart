import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobil_layout.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      drawer:
          SizeConfig.width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffE5E5E5),
      appBar: SizeConfig.width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                  log("Open Drawer");
                },
                icon: const Icon(Icons.menu),
              ),
              elevation: 0,
              backgroundColor: const Color(0xff4EB7F2),
            )
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
