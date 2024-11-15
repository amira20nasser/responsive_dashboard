import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardDesktopLayout(),
    );
  }
}
