
import 'package:app_ban_giay/features/shop/screens/home/widget/home_appbar.dart';
import 'package:app_ban_giay/features/shop/screens/home/widget/primary_header_container.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeaderContainer
            PrimaryHeaderContainer(
              child: Column(
                children: [

                  //AppBar
                  HomeAppBar(),

                  //Searchbar

                  //Category
                ],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}







