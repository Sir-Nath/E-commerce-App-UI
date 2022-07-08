import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/rounded_icon_button.dart';
import '../../models/product.dart';
import 'components/custom_app_bar.dart';
import'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      //checkout this widget CustomAppBar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          arguments.product.rating
        ),
      ),
      body: Body(product: arguments.product,),
    );
  }
}



class ProductDetailsArgument {
  final Product product;
  ProductDetailsArgument({required this.product});
}
