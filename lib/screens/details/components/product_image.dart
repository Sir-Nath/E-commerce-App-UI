import'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductImage extends StatefulWidget {
  final Product product;
  const ProductImage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index: index),
          )
          ,
        )
      ],
    );
  }

  GestureDetector buildSmallPreview({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
          print(selectedImage==index);
        });
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedImage == index? kPrimaryColor : Colors.transparent),//selectedImage == index ? kPrimaryColor : Colors.transparent),
          //color: Colors.white
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
