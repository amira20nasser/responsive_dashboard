import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widgets/custom_drawer.dart';

import 'all_expensess_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: AllExpensessAndQuickInvoiceSection(),
          ),
        )
      ],
    );
  }
}
