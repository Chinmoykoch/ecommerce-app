import 'package:ecommerce/features/authentication/screens/home/home.dart';
import 'package:ecommerce/features/authentication/screens/profile/profile.dart';
import 'package:ecommerce/features/authentication/screens/store/store.dart';
import 'package:ecommerce/features/authentication/screens/wishlists/wishlists.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationControllrer());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? Tcolors.black : Tcolors.white,
          indicatorColor: dark
              ? Tcolors.white.withOpacity(0.1)
              : Tcolors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Wishlists'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationControllrer extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreSceen(),
    const WishlistsScreen(),
    const ProfileScreen(),
  ];
}
