import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/screens/home/components/discount_banner.dart';
import 'package:e_commerce_app_ui/screens/home/components/search_field.dart';
import 'package:e_commerce_app_ui/screens/home/components/section_title.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'home_header.dart';
import 'icon_with_counter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(10)),
          DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(10)),
          Categories(),
          SizedBox(height: getProportionateScreenWidth(10)),
          SectionTitle(text: 'Special for you', press: () {},),
          SizedBox(height: getProportionateScreenWidth(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/Image Banner 2.png",
                  category: "Smartphone",
                  numOfBrands: 18,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "assets/images/Image Banner 3.png",
                  category: "Fashion",
                  numOfBrands: 24,
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
SpecialOfferCard({
Key? key,
required this.category,
required this.image,
required this.numOfBrands,
required this.press,
}) : super(key: key);

final String category, image;
final int numOfBrands;
final GestureTapCallback press;

@override
Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
    child: GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15.0),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "$numOfBrands Brands")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}
