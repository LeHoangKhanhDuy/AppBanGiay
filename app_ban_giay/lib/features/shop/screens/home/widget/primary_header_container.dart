
import 'package:app_ban_giay/features/shop/screens/home/widget/circular_container.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/curved_widget.dart';
import 'package:app_ban_giay/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      // child: Container(
      //     color: TColors.primary,
      //     padding: const EdgeInsets.only(bottom: 0),
      //     child: SizedBox(
      //       height: 400,
      //       child: Stack(
      //       children: [
      //         Positioned(top: -150, right: -250, child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
      //         Positioned(top: 100, left: -300, child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))), 
                                  
      //       ],
      //     ),
      //   ),
      // ),
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,

          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, left: -300, child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))), 
              child,
            ],
          ),
        ),
      ),
    );
  }
}