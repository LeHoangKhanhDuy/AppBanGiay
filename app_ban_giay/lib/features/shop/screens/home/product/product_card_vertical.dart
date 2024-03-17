import 'package:app_ban_giay/features/shop/screens/home/product/product_price_text.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/circulation_icon.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/product_title_text.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/rounded_container.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/shadow_style.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/slider_image.dart';
import 'package:app_ban_giay/utils/constants/colors.dart';
import 'package:app_ban_giay/utils/constants/image_strings.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:app_ban_giay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //Image product, yeu thich, discount
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Image 
                  SlideImage(imageUrl: TImages.productImage1, applyImageRadius: true,),
      
                  //Sale
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    ),
                  ),
      
                  //Yeu tich btn
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CirculationIcon(icon: Iconsax.heart5, color: Colors.red,)
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
      
            //Details
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(title: 'Adidas Trae Young Unlimited 2 Low', smallSize: true),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text('Adidas', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: TSizes.xs,),
                      const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
                    ],
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Gia san pham
                      const ProductPriceText(price: '2.000.000'),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



