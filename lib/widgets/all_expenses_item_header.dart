import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'custom_circular_icon.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.colorBackGround,
    this.colorImage,
  });
  final String image;
  final Color? colorBackGround, colorImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCircularIcon(
          colorBackGround: colorBackGround,
          image: image,
          colorImage: colorImage,
        ),
        // const Spacer(),
        Transform.rotate(
          angle: -180 * (math.pi / 180),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: colorImage ?? const Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
