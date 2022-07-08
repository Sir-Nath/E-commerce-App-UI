import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconWithCounter extends StatelessWidget {
  final String svgSrc;
  final int numOfitems;
  final GestureTapCallback press;
  const IconWithCounter({
    Key? key, required this.svgSrc, this.numOfitems = 0, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(overflow: Overflow.visible, children: [
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          width: getProportionateScreenWidth(46),
          height: getProportionateScreenHeight(46),
          decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle),
          child: SvgPicture.asset(svgSrc),
        ),
        Positioned(
          right: 0,
          top: -3,
          child: Container(
            //padding: EdgeInsets.all(getProportionateScreenWidth(12)),
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenHeight(16),
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '$numOfitems',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              )),
        ),
      ]),
    );
  }
}