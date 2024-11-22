import 'package:flutter/material.dart';
import '../models/tansaction_model.dart';
import '../utils/app_styles.dart';
import 'transaction_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 16),
        TransactionHistoryListView(
          transactions: [
            TransactionModel(
              title: "Cash Withdrawal",
              date: "13 Apr, 2022 ",
              price: 20129,
              type: TransactionType.withdraw,
            ),
            TransactionModel(
              title: "Landing Page project",
              date: "13 Apr, 2022 at 3:30 PM",
              price: 2000,
              type: TransactionType.inaccount,
            ),
            TransactionModel(
              title: "Juni Mobile App project",
              date: "13 Apr, 2022 ",
              price: 20129,
              type: TransactionType.withdraw,
            ),
          ],
        ),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          "See all",
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
