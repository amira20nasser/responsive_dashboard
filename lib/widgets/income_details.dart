import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemDetails(
        color: Color(0xFF208BC7), title: 'Design service', precentage: 0.4),
    IncomeItemDetails(
        color: Color(0xFF4DB7F2), title: 'Design product', precentage: 0.25),
    IncomeItemDetails(
        color: Color(0xFF064060), title: 'Product royalti', precentage: 0.2),
    IncomeItemDetails(
        color: Color(0xFFE2DECD), title: 'Other', precentage: 0.22),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(children: List.generate(4, (index) => items[index]));
  }
}

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails(
      {super.key,
      required this.color,
      required this.title,
      required this.precentage});
  final Color color;
  final String title;
  final double precentage;
  @override
  Widget build(BuildContext context) {
    // return FittedBox(
    //   fit: BoxFit.scaleDown,
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 12,
    //         height: 12,
    //         decoration: ShapeDecoration(
    //           color: color,
    //           shape: const OvalBorder(),
    //         ),
    //       ),
    //      const SizedBox(width: 12),
    //       Text(
    //         title,
    //         style: AppStyles.styleRegular16,
    //       ),
    //      const SizedBox(width: 24),
    //       Text(
    //         "%${(precentage * 100).toInt()}",
    //         style: AppStyles.styleMedium16,
    //       ),
    //     ],
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        "%${(precentage * 100).toInt()}",
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
