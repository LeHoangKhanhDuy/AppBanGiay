
import 'package:app_ban_giay/features/shop/screens/home/product/gridlayout_product.dart';
import 'package:app_ban_giay/features/shop/screens/home/product/product_card_vertical.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/home_appbar.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/home_category.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/primary_header_container.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/search_container.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/section_heading.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/slide.dart';
import 'package:app_ban_giay/utils/constants/image_strings.dart';
import 'package:app_ban_giay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeaderContainer
            PrimaryHeaderContainer(
              child: Column(
                children: [

                  //AppBar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Searchbar
                  SearchContainer(text: 'Tìm sản phẩm'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //Category
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [

                        //Heading
                        SectionHeading(title: 'Danh mục sản phẩm', showActionButton: false, textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwSections),

                        //Category
                        HomeCategory(),

                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),         
              child: Column(
                children: [
                  //Slide image
                  const TSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3, TImages.banner4]),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  //SanPham
                  GridLayoutProduct(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),           
                ],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}

















