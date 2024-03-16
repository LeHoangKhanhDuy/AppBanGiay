import 'package:app_ban_giay/features/shop/screens/home/widget/vertical_image_widget.dart';
import 'package:app_ban_giay/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return VerticalImageText(image: TImages.adidasIcon, title: 'Adidas', opTap: (){});
        },
      ),
    );
  }
}
