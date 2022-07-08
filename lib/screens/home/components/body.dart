import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/models/product.dart';
import 'package:e_commerce_app_ui/screens/home/components/discount_banner.dart';
import 'package:e_commerce_app_ui/screens/home/components/popular_products.dart';
import 'package:e_commerce_app_ui/screens/home/components/section_title.dart';
import 'package:e_commerce_app_ui/screens/home/components/special_offers.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/product_card.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(10)),
          Categories(),
          SizedBox(height: getProportionateScreenWidth(10)),
          const SpecialOffers(),
          SizedBox(height: getProportionateScreenWidth(10)),
          PopularProduct(),
          SizedBox(height: getProportionateScreenWidth(10)),
        ],
      ),
    ));
  }
}


