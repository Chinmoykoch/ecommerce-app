// import 'package:ecommerce/utils/constants/sizes.dart';
// import 'package:ecommerce/utils/devices/device_utility.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class TAppbar extends StatelessWidget implements PreferredSizeWidget {
//   const TAppbar({
//     super.key,
//     this.title,
//     required this.showBackArror,
//     this.leadingIcon,
//     this.actions,
//     this.leadingOnPressed,
//   });

//   final Widget? title;
//   final bool showBackArror;
//   final IconData? leadingIcon;
//   final List<Widget>? actions;
//   final VoidCallback? leadingOnPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
//       child: AppBar(
//         automaticallyImplyLeading: false,
//         leading: showBackArror
//             ? IconButton(
//                 onPressed: () => Get.back, icon: const Icon(Iconsax.arrow_left))
//             : leadingIcon != null
//                 ? IconButton(
//                     onPressed: leadingOnPressed, icon: Icon(leadingIcon))
//                 : null,
//         title: title,
//         actions: actions,
//       ),
//     );
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
// }
