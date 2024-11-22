import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItemBody extends StatelessWidget {
  const AllExpensesItemBody({
    super.key,
    required this.title,
    required this.date,
    required this.price,
    this.textColor,
  });
  final String title, date;
  final double price;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold16(context).copyWith(color: textColor),
        ),
        Text(
          date,
          style: AppStyles.styleRegular14(context).copyWith(color: textColor),
        ),
        const SizedBox(height: 16),
        Text(
          NumberFormat.currency(symbol: '\$', decimalDigits: 0).format(price),
          style: AppStyles.styleSemiBold24(context).copyWith(color: textColor),
        ),
      ],
    );
  }
}
