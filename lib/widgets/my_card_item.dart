
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:const  EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, bottom: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
