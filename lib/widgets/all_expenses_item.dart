import 'package:flutter/material.dart';
import '../models/all_expenses_item_model.dart';
import 'in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      switchInCurve: Curves.linear,
      switchOutCurve: Curves.linear,
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        );
      },
      child: isActive
          ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
          : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
    );
  }
}
