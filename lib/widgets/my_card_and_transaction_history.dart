import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_cards.dart';
import 'transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      borderRadius: BorderRadius.circular(12.0),
      child: const Column(
        children: [
          MyCards(),
          Divider(
            color: Color(0xFFF1F1F1),
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
