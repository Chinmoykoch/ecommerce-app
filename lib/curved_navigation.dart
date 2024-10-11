// import 'package:ecommerce/features/authentication/screens/home/home.dart';
// import 'package:ecommerce/features/authentication/screens/profile/profile.dart';
// import 'package:ecommerce/features/authentication/screens/store/store.dart';
// import 'package:ecommerce/features/authentication/screens/wishlists/wishlists.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class CurvedNavigation extends StatelessWidget {
//   final Color backgroundColor;
//   final double height;
//   final double elevation;
//   final int selectedIndex;
//   final Function(int index) onDestinationSelected;

//   const CurvedNavigation({
//     super.key,
//     required this.backgroundColor,
//     required this.height,
//     required this.elevation,
//     required this.selectedIndex,
//     required this.onDestinationSelected,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: controller.selectedIndex.value,
//         onTap: (index) {
//           controller.selectedIndex.value = index;
//           onDestinationSelected(index);
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: "Wishlist"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//       body: controller.screens[controller.selectedIndex.value],
//     );
//   }
// }

// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;

//   final screens = [
//     const HomeScreen(),
//     const StoreSceen(),
//     const WishlistsScreen(),
//     const ProfileScreen(),
//   ];
// }



