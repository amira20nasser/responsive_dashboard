import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(height: 20),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 19),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}