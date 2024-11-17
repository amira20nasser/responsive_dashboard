import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: AdaptiveLayoutWidget(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DashboardDesktopLayout(),
        ));
  }
}
