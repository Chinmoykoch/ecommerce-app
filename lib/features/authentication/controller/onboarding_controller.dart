import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update current page indicator on scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  //skip page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  // next page

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
