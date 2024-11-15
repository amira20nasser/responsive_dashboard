import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: colorBackGround ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              colorImage ?? const Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          )),
        ),
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
