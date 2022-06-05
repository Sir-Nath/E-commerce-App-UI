import 'package:e_commerce_app_ui/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            numOfitems: 3,
            press: () {},
          )
        ],
      ),
    );
  }
}
