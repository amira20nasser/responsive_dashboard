import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: getResponsiveFontSize(context, baseFontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        color: const Color(0xffFFFFFF),
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, baseFontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, baseFontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );
}

//Scale Factor =  width / plateform
// Responsive font size = basefontSize * Scale Factor
// (min , max) fontsize
double getResponsiveFontSize(
  BuildContext context, {
  required double baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  log("fontsize $baseFontSize scaleFactor $scaleFactor LowerLimit $lowerLimit upperLimit $upperLimit ,responsiveFontSize $responsiveFontSize ");
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

// if you use tablet or mobil you can use PlatformDispatcher
// if web you must use MediaQuery as user can change the width

double getScaleFactor(BuildContext context) {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;
  // double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  }
  return width / 2000;
}
