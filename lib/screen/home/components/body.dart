import 'package:flutter/material.dart';
import 'package:single_item_furniture/screen/home/components/search_bar.dart';
import 'package:single_item_furniture/screen/home/components/show_more_button.dart';

import '../../../constants.dart';
import 'category_items.dart';
import 'menu_items.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: kDefaultPadding),
          SearchBar(),
          SizedBox(height: kDefaultPadding),
          CategoryItems(),
          SizedBox(height: kDefaultPadding),
          MenuItems(),
          SizedBox(height: kDefaultPadding),
          ShowMoreButton(text: 'Show More'),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
