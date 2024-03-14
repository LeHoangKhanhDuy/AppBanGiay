
import 'package:app_ban_giay/features/authentication/screens/login/login.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDevicesUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(onPressed: () => Get.to(() => const LoginScreen()) , child: const Text('Bỏ qua')),
    );
  }
}