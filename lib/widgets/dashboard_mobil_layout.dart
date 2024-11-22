import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistory(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}
