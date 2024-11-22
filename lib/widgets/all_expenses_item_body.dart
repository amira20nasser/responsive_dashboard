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
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style:
                AppStyles.styleSemiBold16(context).copyWith(color: textColor),
          ),
        ),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            date,
            style: AppStyles.styleRegular14(context).copyWith(color: textColor),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            NumberFormat.currency(symbol: '\$', decimalDigits: 0).format(price),
            style:
                AppStyles.styleSemiBold24(context).copyWith(color: textColor),
          ),
        ),
      ],
    );
  }
}
