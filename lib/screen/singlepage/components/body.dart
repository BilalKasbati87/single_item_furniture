import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:single_item_furniture/screen/home/components/show_more_button.dart';
import 'package:single_item_furniture/screen/singlepage/components/add_to_cart_button.dart';
import 'package:single_item_furniture/screen/singlepage/components/product_small_image.dart';
import 'package:single_item_furniture/screen/singlepage/components/rating_and_quantity.dart';
import 'package:single_item_furniture/screen/singlepage/components/star_icon_Items.dart';

import '../../../constants.dart';
import 'description_text.dart';
import 'item_main_image_with_color_options.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding),
          ItemMainImageWithColorOptions(),
          SizedBox(height: kDefaultPadding),
          ProductSmallImage(),
          SizedBox(height: kDefaultPadding),
          RatingAndQuantity(),
          SizedBox(height: kDefaultPadding),
          DescriptionText(),
          SizedBox(height: kDefaultPadding),
          AddToCartButton(text: 'Add to Cart', image: 'assets/icons/cart.svg'),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
