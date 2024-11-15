import 'package:flutter/material.dart';
import 'all_expenses_header.dart';
import 'all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          Expanded(child: AllExpensesItemsListView()),
        ],
      ),
    );
  }
}
