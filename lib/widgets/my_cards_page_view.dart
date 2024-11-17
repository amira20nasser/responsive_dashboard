import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'my_card_item.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) => const MyCardItem()),
    );
  }
}
