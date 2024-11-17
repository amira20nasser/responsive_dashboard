import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/tansaction_model.dart';
import '../utils/app_styles.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({super.key, required this.transaction});
  final TransactionModel transaction;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          transaction.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transaction.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          NumberFormat.currency(symbol: '\$', decimalDigits: 0)
              .format(transaction.price),
          style: AppStyles.styleSemiBold20.copyWith(
            color: transaction.type == TransactionType.withdraw
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
