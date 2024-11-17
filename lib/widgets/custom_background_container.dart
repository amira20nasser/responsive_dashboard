import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    required this.padding,
    this.borderRadius,
    this.margin,
  });
  final Widget child;
  final double padding;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
