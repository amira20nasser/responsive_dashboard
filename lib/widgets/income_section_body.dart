import 'dart:developer';

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
    log(MediaQuery.sizeOf(context).width.toString());
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
