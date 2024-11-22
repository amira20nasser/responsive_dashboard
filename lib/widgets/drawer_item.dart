import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: AnimatedDefaultTextStyle(
        style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
        duration: const Duration(milliseconds: 400),
        child: Text(
          drawerItemModel.title,
        ),
      ),
      trailing: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isActive ? 3.27 : 0.0,
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
