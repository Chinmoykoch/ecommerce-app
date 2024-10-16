import 'package:ecommerce/common/widgets.login_signup/divider.dart';
import 'package:ecommerce/common/widgets.login_signup/socialbuttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/verifyemail.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // phone-no.
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check)),
          ),

          // terms and conditions
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              // const SizedBox(width: TSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? Tcolors.white : Tcolors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? Tcolors.white : Tcolors.primary,
                          ),
                    ),
                    TextSpan(
                        text: '${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${TTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? Tcolors.white : Tcolors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? Tcolors.white : Tcolors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const Verifyemail());
                },
                child: const Text(TTexts.createAccount)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          // divider
          Tformdivider(dividerText: TTexts.orSignUpWith.capitalize!),

          const SizedBox(height: TSizes.spaceBtwSections),

          // social buttons
          const Socialbuttons()
        ],
      ),
    );
  }
}
