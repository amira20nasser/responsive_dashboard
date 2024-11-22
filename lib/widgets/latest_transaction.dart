import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/user_model.dart';
import '../utils/app_images.dart';
import 'latest_transaction_list_view.dart';

class LastestTransaction extends StatelessWidget {
  const LastestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        //dummy data
        SizedBox(
          height: 70,
          child: LatestTransactionListView(
            userInfoTransactions: [
              UserModel(
                username: "Madrani Andi",
                email: "Madraniadi20@gmail",
                image: Assets.imagesAvatar1,
              ),
              UserModel(
                username: "Josua Nunito",
                email: "Josh Nunito@gmail.com",
                image: Assets.imagesAvatar2,
              ),
              UserModel(
                username: "Madrani",
                email: "Madraniadi20@gmail",
                image: Assets.imagesAvatar1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
