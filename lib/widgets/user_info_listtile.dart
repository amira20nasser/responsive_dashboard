import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.image,
    required this.username,
    required this.email,
  });
  final String image, username, email;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            username,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            email,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
