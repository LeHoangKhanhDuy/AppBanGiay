import 'package:app_ban_giay/common/widgets/success_failed_screen/cart_empty.dart';
import 'package:app_ban_giay/utils/constants/colors.dart';
import 'package:app_ban_giay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key, 
    required this.onPressed, 
    this.iconColor, 
    this.counterBgColor, 
    this.counterTextColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartEmptyScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? TColors.white : TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('0', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        ),
      ],
    );
  }
}