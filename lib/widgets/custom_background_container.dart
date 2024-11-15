import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    required this.padding,
  });
  final Widget child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
