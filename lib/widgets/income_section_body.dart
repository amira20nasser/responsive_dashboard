import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? Expanded(
            child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: const DetailedIncomeChart(),
          ))
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
