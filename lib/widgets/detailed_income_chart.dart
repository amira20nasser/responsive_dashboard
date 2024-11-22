import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  static const data = [
    {
      "value": 40,
      "title": "Design service",
      "color": 0xff208CC8,
    },
    {
      "value": 25,
      "title": "Design product",
      "color": 0xff4EB7F2,
    },
    {
      "value": 20,
      "title": "Product royalti",
      "color": 0xff064061,
    },
    {
      "value": 15,
      "title": "Others",
      "color": 0xffE2DECD,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: List.generate(
        4,
        (index) => customPieChartSectionData(
          itemIndex: index,
          activeIndex: activeIndex,
          value: data[index]["value"] as double,
          title: data[index]['title'].toString(),
          color: Color(data[index]['color'] as int),
        ),
      ),
    );
  }

  PieChartSectionData customPieChartSectionData({
    double? value,
    Color? color,
    required int activeIndex,
    required int itemIndex,
    required String title,
  }) {
    return PieChartSectionData(
      value: value,
      color: color,
      radius: activeIndex == itemIndex ? 60 : 50,
      title: activeIndex == itemIndex ? title : "$value%",
      titlePositionPercentageOffset: activeIndex == itemIndex ? -1.1 : null,
      titleStyle: AppStyles.styleMedium16(context)
          .copyWith(color: activeIndex == itemIndex ? null : Colors.white),
    );
  }
}
