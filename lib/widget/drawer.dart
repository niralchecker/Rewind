import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import '../modules/utils/helper.dart';
import '../resources/app_images.dart';
import '../routes/app_pages.dart';
import '../values/text_style.dart';
import 'drawer_item.dart';

class DrawerWidget extends StatelessWidget implements PreferredSizeWidget {
  final HomeController controller;

  const DrawerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        width: 250,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              color: Colors.black,
              child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ), //BoxDecoration
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(AppImages.drawerHeader),
                      ),
                      horizontalSpacing(10),
                      Text("Rewind",
                          style: textStyle25.copyWith(
                              fontSize: 23, color: Colors.white))
                    ],
                  )),
            ),
            // verticalSpacing(10),
            DrawerItem(
                icon: Icons.home,
                text: 'Dashboard',
                isSelected: controller.selectedIndex.value == 0,
                onTap: () {
                  Get.back();
                  Get.toNamed(Routes.HOME);
                  // Navigator.pushReplacementNamed(context, "/page0");
                }),
            DrawerItem(
                icon: Icons.shopping_cart_outlined,
                text: 'Buy',
                isSelected: controller.selectedIndex.value == 1,
                onTap: () {
                  Get.back();
                  controller.selectedIndex.value = 1;
                  // Navigator.pushReplacementNamed(context, "/page1");
                }),
            DrawerItem(
                icon: Icons.flash_on_sharp,
                text: 'Sell',
                isSelected: controller.selectedIndex.value == 2,
                onTap: () {
                  Get.back();
                  controller.selectedIndex.value = 2;
                  // Navigator.pushReplacementNamed(context, "/page2");
                }),
            DrawerItem(
                icon: Icons.person,
                text: 'My Profile',
                isSelected: controller.selectedIndex.value == 3,
                onTap: () {
                  Get.back();
                  Get.toNamed(Routes.PROFILE);
                  controller.selectedIndex.value = 3;
                  // Navigator.pushReplacementNamed(context, "/page3");
                }),
            DrawerItem(
                icon: Icons.logout,
                text: 'Logout',
                isSelected: controller.selectedIndex.value == 4,
                onTap: () {
                  Get.back();
                  controller.selectedIndex.value = 4;
                  // Navigator.pushReplacementNamed(context, "/page3");
                }),
            const Divider(),
          ],
        ),
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
