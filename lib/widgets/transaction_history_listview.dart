import 'package:flutter/material.dart';
import '../models/tansaction_model.dart';
import 'transaction_card.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key, required this.transactions});

  final List<TransactionModel> transactions;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (index) => TransactionHistoryCard(transaction: transactions[index]),
      ),
    );
    // return ListView.builder(
    //   itemCount: 3,
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     return TransactionHistoryCard(
    //       transaction: transactions[index],
    //     );
    //   },
    // );
  }
}
