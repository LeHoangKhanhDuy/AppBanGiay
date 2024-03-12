import 'package:app_ban_giay/common/widgets/form_line.dart';
import 'package:app_ban_giay/common/widgets/social_button.dart';
import 'package:app_ban_giay/features/authentication/screens/signup/verify_email.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
    
        //full name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.fullName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        
        //Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //Phone
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
        
        //Pass
        TextFormField(
          obscureText: true,                   
          decoration: const InputDecoration(labelText: TTexts.password, prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),

        //CFPass
        TextFormField(
          obscureText: true,                   
          decoration: const InputDecoration(labelText: TTexts.confirmPassword, prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields,),
    
        //Checkbox
        // Row(
        //   children: [
        //     SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
        //     const SizedBox(width: TSizes.spaceBtwItems,),
        //     Text.rich(
        //       TextSpan(children: [
        //         TextSpan(text: '${TTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
        //         TextSpan(text: '${TTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
        //           color: dark ? TColors.white : TColors.primary,
        //           decoration: TextDecoration.underline,
        //           decorationColor: dark ? TColors.white : TColors.primary,
        //         )),
        //         TextSpan(text: '${TTexts.and}', style: Theme.of(context).textTheme.bodySmall),
        //         TextSpan(text: ' ${TTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
        //           color: dark ? TColors.white : TColors.primary,
        //           decoration: TextDecoration.underline,
        //           decorationColor: dark ? TColors.white : TColors.primary,
        //         )),
        //       ]),
        //     ),
        //   ],
        // ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        //SignUp Btn
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(TTexts.signUp))),
    
        const SizedBox(height: TSizes.spaceBtwSections,),
    
        //Line 
        FormLine(dark: dark),
        const SizedBox(height: TSizes.spaceBtwSections,),
    
        //Footer
        const SocialBtn(),
      ],
    ));
  }
}