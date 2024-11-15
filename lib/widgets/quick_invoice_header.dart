import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'custom_circular_icon.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        CustomCircularIcon(
          colorBackGround: Color(0xffFAFAFA),
          image: Assets.imagesAdd,
          colorImage: Color(0xff4EB7F2),
        ),
      ],
    );
  }
}