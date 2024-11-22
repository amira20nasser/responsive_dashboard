import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'dashboard_mobil_layout.dart';


class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
