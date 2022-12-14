import 'package:flutter/material.dart';
import 'package:furniture_app/Custom_presets/Main_naming.dart';
import 'package:furniture_app/Pages/Mycart/cartpage.dart';
import 'package:furniture_app/Pages/Myfavorite/favoriteProducts.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: MediaQuery.of(context).size.width * 0.07,
                ),
              ),
              Image.asset(biglogo,
                  scale: MediaQuery.of(context).size.width * 0.01),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                size: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
              GestureDetector(
                onTap: () => Get.to(() => const FavoriteProductPage()),
                child: Icon(
                  Icons.favorite_border,
                  size: MediaQuery.of(context).size.width * 0.07,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
              GestureDetector(
                onTap: () {
                  Get.to(() => const CartPage());
                },
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: MediaQuery.of(context).size.width * 0.07,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
