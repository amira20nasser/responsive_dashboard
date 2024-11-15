import 'package:flutter/material.dart';

import '../models/user_model.dart';
import 'user_info_listtile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
    required this.userInfoTransactions,
  });

  final List<UserModel> userInfoTransactions;
  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //       children: userInfoTransactions
    //           .map((e) => IntrinsicWidth(
    //                 child: UserInfoListTile(
    //                   image: e.image,
    //                   email: e.email,
    //                   username: e.username,
    //                 ),
    //               ))
    //           .toList()),
    // );

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: userInfoTransactions.length,
      itemBuilder: (context, index) {
        return IntrinsicWidth(
          child: UserInfoListTile(
            image: userInfoTransactions[index].image,
            email: userInfoTransactions[index].email,
            username: userInfoTransactions[index].username,
          ),
        );
      },
    );
  }
}
