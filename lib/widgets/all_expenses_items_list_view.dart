import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({
    super.key,
  });

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      title: "Balance",
      date: "April 2022",
      image: Assets.imagesBalance,
      price: 20129,
    ),
    AllExpensesItemModel(
      title: "Income",
      date: "April 2022",
      image: Assets.imagesIncome,
      price: 20129,
    ),
    AllExpensesItemModel(
      title: "Expenses",
      date: "April 2022",
      image: Assets.imagesExpenses,
      price: 20129,
    ),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    //other method

    return Row(
      children: AllExpensesItemsListView.items.asMap().entries.map(
        (e) {
          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  index = e.key;
                });
              },
              child: e.key == 1
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AspectRatio(
                        aspectRatio: 180 / 216,
                        child: AllExpensesItem(
                          allExpensesItemModel: e.value,
                          isActive: index == e.key,
                        ),
                      ),
                    )
                  : AspectRatio(
                      aspectRatio: 180 / 216,
                      child: AllExpensesItem(
                        allExpensesItemModel: e.value,
                        isActive: index == e.key,
                      ),
                    ),
            ),
          );
        },
      ).toList(),
    );

    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 3,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(left: 12.0),
    //       child: AspectRatio(
    //         aspectRatio: 180 / 216,
    //         child: AllExpensesItem(
    //           allExpensesItemModel: items[index],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
