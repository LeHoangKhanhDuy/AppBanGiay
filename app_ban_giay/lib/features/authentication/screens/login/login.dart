import 'package:app_ban_giay/common/styles/spacing_styles.dart';
import 'package:app_ban_giay/common/widgets/form_line.dart';
import 'package:app_ban_giay/common/widgets/login_form.dart';
import 'package:app_ban_giay/common/widgets/login_header.dart';
import 'package:app_ban_giay/common/widgets/social_button.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo
              const LoginHeader(),

              //FOrm
              const LoginForm(),

              //Line 
              FormLine(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Footer
              const SocialBtn(),
            ],
          ),
        ),
      ),
    );
  }
}






