import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:single_item_furniture/screen/home/home_screen.dart';

import '../../../constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: Row(
      children: [
        SizedBox(width: kDefaultPadding / 3),
        AppBarItemCard(
          image: 'assets/icons/left_arrow.svg',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
        ),
      ],
    ),
    actions: [
      AppBarItemCard(
        image: 'assets/icons/bag.svg',
        press: () {},
      ),
      SizedBox(width: kDefaultPadding),
      AppBarItemCard(
        image: 'assets/icons/menu.svg',
        press: () {},
      ),
      SizedBox(width: kDefaultPadding),
    ],
  );
}

class AppBarItemCard extends StatelessWidget {
  const AppBarItemCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 50,
            color: kShadowColor,
          )
        ],
      ),
      child: IconButton(
        icon: SvgPicture.asset(image),
        onPressed: press,
      ),
    );
  }
}
