
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
    required this.colorBackGround,
    required this.image,
    required this.colorImage,
  });

  final Color? colorBackGround;
  final String image;
  final Color? colorImage;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
