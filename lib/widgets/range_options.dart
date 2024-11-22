import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
      Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -90 * (math.pi / 180),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
