import 'package:app_ban_giay/common/widgets/success_screen.dart';
import 'package:app_ban_giay/features/authentication/screens/login/login.dart';
import 'package:app_ban_giay/utils/constants/image_strings.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/constants/text_strings.dart';
import 'package:app_ban_giay/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image
              Image(image: const AssetImage(TImages.verifyEmail), width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('supportsgshoes@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.titleConfirmEmail, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              //Btn
              SizedBox(width:  double.infinity, 
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.verifyEmailSucess,
                  title: TTexts.successEmail,
                  subTitle: TTexts.successEmailTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                  )), 
                  child: const Text(TTexts.continueSuccess))),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width:  double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}