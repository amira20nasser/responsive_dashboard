import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/user_info_listtile.dart';

import '../utils/app_images.dart';
import 'drawer_items_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            username: "Lekan Okeowo",
            email: "demo@gmail.com",
          ),
          SizedBox(height: 20),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
