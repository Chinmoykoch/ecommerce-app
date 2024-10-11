import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/common/widgets.login_signup/divider.dart';
import 'package:ecommerce/common/widgets.login_signup/socialbuttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title & sub-title
              const LoginHeader(),

              const SizedBox(height: TSizes.spaceBtwItems),

              // login form
              const LoginForm(),

              // divider
              Tformdivider(dividerText: TTexts.orSignInWith.capitalize!),

              const SizedBox(height: TSizes.spaceBtwItems),

              // footer
              const Socialbuttons(),
            ],
          ),
        ),
      ),
    );
  }
}
