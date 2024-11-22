import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import 'all_expenses_item_body.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          AllExpensesItemBody(
            title: allExpensesItemModel.title,
            date: allExpensesItemModel.date,
            price: allExpensesItemModel.price,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          // side: const BorderSide(  
          //   width: 0,
          //   color: Color(0xfff1f1f1),
          // ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            colorImage: const Color(0xffFFFFFF),
            colorBackGround: const Color(0xffFFFFFF).withOpacity(0.1),
          ),
          AllExpensesItemBody(
            title: allExpensesItemModel.title,
            date: allExpensesItemModel.date,
            price: allExpensesItemModel.price,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
