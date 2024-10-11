// import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
// import 'package:ecommerce/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image(
        //   height: 160,
        //   image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        // ),
        Text(TTexts.signupTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
