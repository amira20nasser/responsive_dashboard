import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'all_expensess_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';
import 'my_cards.dart';
import 'transaction_history.dart';

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
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 32.0, right: 32),
                child: MyCardAndTransactionHistory(),
              ),
              SizedBox(height: 24),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 32),
                child: IncomeSection(),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
