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
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 0,
      minVerticalPadding: 1,
      minTileHeight: 0,
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
        (precentage * 100).toString(),
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
